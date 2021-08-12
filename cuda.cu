#include <cuda_runtime.h> 
#include <vector>
#include <common.h>


// Helper for checking CUDA error codes
#define gpuErrchk(ans) { gpuAssert((ans), __FILE__, __LINE__); }
inline void gpuAssert(cudaError_t code, const char *file, int line, bool abort=true)
{
   if (code != cudaSuccess) 
   {
      printf("GPUassert: %s %s %d\n", cudaGetErrorString(code), file, line);
      if (abort) exit(code);
   }
}


__global__ void cuda_block_scans(float *g_odata, float *g_sums, float *g_idata) {
    __shared__ float temp[BLOCK_SIZE];

    // Downsweep
    int thid = threadIdx.x;
    int block_offset = 2 * blockIdx.x * blockDim.x;
    int offset = 1;

    // Load input in shared memory
    temp[2 * thid] = g_idata[block_offset + 2 * thid];
    temp[2 * thid + 1] = g_idata[block_offset + 2 * thid + 1];

    // Upsweep
    for (int d = BLOCK_SIZE >> 1; d > 0; d >>= 1) {
        __syncthreads();
        if (thid < d) {
             int ai = offset*(2*thid+1)-1;     
             int bi = offset*(2*thid+2)-1;
             temp[bi] += temp[ai];
        }
        offset *= 2;
    }

    // clear the last element & record block sum
     if (thid == 0) {
         g_sums[blockIdx.x] = temp[BLOCK_SIZE-1];
         temp[BLOCK_SIZE - 1] = 0; 
    }

    // Downsweep
     for (int d = 1; d < BLOCK_SIZE; d *= 2) {
         offset >>= 1;
         __syncthreads();
         if (thid < d) {
             int ai = offset * (2 * thid + 1) - 1;
             int bi = offset * (2 * thid + 2) - 1;
             float t = temp[ai];
             temp[ai] = temp[bi];
             temp[bi] += t;
         }
     }
     __syncthreads();

     // Write out output
     g_odata[block_offset + 2 * thid] = temp[2 * thid];
     g_odata[block_offset + 2 * thid + 1] = temp[2 * thid + 1];
}

// Feed back the block sums into each partial.
// WARNING: This is a trivial implementation. For reasonable perf, do coalescing!
__global__ void cuda_add(float* partials, float* block_sums, int block_size) {
    auto value = block_sums[blockIdx.x];
    auto chunk = partials + (block_size * blockIdx.x);

    for (auto i = 0; i < block_size; i++) {
        chunk[i] += value;
    }
}

TestRun CudaAlgo::run(std::vector<float> input, bool gold_silent) const {
    auto input_size = input.size();

    const int NUM_BLOCKS = input_size / BLOCK_SIZE;

    const int REMAINDER = input_size % BLOCK_SIZE;
    if (REMAINDER != 0) {
        std::cout << "WARNING: Input size not divisible by block size" << std::endl;
    }

    // Compute the Gold value by running a local scan
    std::vector<float> gold = input;
    local_scan_inplace(gold);


    // Allocate device memory
    float* d_input;
    float *d_output;
    float *d_block_sums;
    gpuErrchk(cudaMalloc((void **)&d_input, sizeof(float) * input_size));
    gpuErrchk(cudaMalloc((void **)&d_output, sizeof(float) * input_size));
    gpuErrchk(cudaMalloc((void **)&d_block_sums, sizeof(float) * NUM_BLOCKS));

    // Load input to GPU
    gpuErrchk(cudaMemcpy(d_input, input.data(), sizeof(float) * input_size, cudaMemcpyHostToDevice));
    
    // Execute local block scans
    cudaEvent_t cuda_block_scans_start, cuda_block_scans_end;
    gpuErrchk(cudaEventCreate(&cuda_block_scans_start));
    gpuErrchk(cudaEventCreate(&cuda_block_scans_end));

    gpuErrchk(cudaEventRecord(cuda_block_scans_start));
    this->block_scans(input_size, d_output, d_block_sums, d_input);
    //cuda_block_scans<<<input_size/BLOCK_SIZE, BLOCK_SIZE/2>>>(d_output, d_block_sums, d_input);
    gpuErrchk(cudaEventRecord(cuda_block_scans_end));


    gpuErrchk(cudaDeviceSynchronize());

    std::vector<float> test(input_size);
    gpuErrchk(cudaMemcpy(test.data(), d_output, sizeof(float) * input_size, cudaMemcpyDeviceToHost));
    gpuErrchk(cudaDeviceSynchronize());


    // Load block sums to host, sequentially scan, re-upload
    std::vector<float> block_sums(NUM_BLOCKS);
    gpuErrchk(cudaMemcpy(block_sums.data(), d_block_sums, sizeof(float) * NUM_BLOCKS, cudaMemcpyDeviceToHost));
    local_scan_inplace(block_sums);
    gpuErrchk(cudaMemcpy(d_block_sums, block_sums.data(), sizeof(float) * NUM_BLOCKS, cudaMemcpyHostToDevice));

    // Add in the block sums
    gpuErrchk(cudaDeviceSynchronize());
    cudaEvent_t cuda_add_start, cuda_add_end;
    gpuErrchk(cudaEventCreate(&cuda_add_start));
    gpuErrchk(cudaEventCreate(&cuda_add_end));

    gpuErrchk(cudaEventRecord(cuda_add_start));
    cuda_add<<<NUM_BLOCKS, 1>>>(d_output, d_block_sums, BLOCK_SIZE);
    gpuErrchk(cudaEventRecord(cuda_add_end));
    gpuErrchk(cudaDeviceSynchronize());

    // Copy final output to device
    gpuErrchk(cudaMemcpy(input.data(), d_output, sizeof(float) * input_size, cudaMemcpyDeviceToHost));

    // Cleanup after kernel execution
    gpuErrchk(cudaFree(d_input));
    gpuErrchk(cudaFree(d_output));
    gpuErrchk(cudaFree(d_block_sums));

    // Collect timing 
    float block_scans_time;
    gpuErrchk(cudaEventElapsedTime(&block_scans_time, cuda_block_scans_start, cuda_block_scans_end));
    float add_time;
    gpuErrchk(cudaEventElapsedTime(&add_time, cuda_add_start, cuda_add_end));
    Timing timing(block_scans_time, add_time);

    // Perform gold checking
    GoldCheck gold_check(input, gold);
    gold_check.silent = gold_silent;

    // Done!
    return TestRun(std::move(input), timing, gold_check);
}

const char* NvidiaAlgo::name() const {
    return "cuda nvidia";
}

void NvidiaAlgo::block_scans(size_t input_size, float* d_output, float* d_block_sums, float* d_input) const  {
    cuda_block_scans<<<input_size/BLOCK_SIZE, BLOCK_SIZE/2>>>(d_output, d_block_sums, d_input);
}


const char* DpiaAlgo::name() const {
    return "cuda dpia";
}

__global__ void dpia_block_scans_internal(float *output, float *d_block_sums, const float *d_input);

void DpiaAlgo::block_scans(size_t input_size, float *d_output, float *d_block_sums, float *d_input) const {
        dpia_block_scans_internal<<<input_size/BLOCK_SIZE, BLOCK_SIZE/2>>>(d_output, d_block_sums, d_input);
}


__global__
void dpia_block_scans_internal(float* output, float* d_block_sums, const float* d_input){
  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  __shared__ float up1[32];
  __shared__ float up2[16];
  __shared__ float up3[8];
  __shared__ float up4[4];
  __shared__ float up5[2];
  __shared__ float up6[1];

  __shared__ float down1[1];
  __shared__ float down2[2];
  __shared__ float down3[4];
  __shared__ float down4[8];
  __shared__ float down5[16];
  __shared__ float down6[32];

  //for (int wg_id = blockIdx.x;(wg_id < 256);wg_id = (wg_id + gridDim.x)) {
  int wg_id = blockIdx.x;
  /* mapLocal */
  for (int l_id = threadIdx.x; (l_id < 32); l_id = (l_id + blockDim.x))
  {
      /* oclReduceSeq */
      {
        float x;
        x = 0.0f;
        /* unrolling loop of 2 */
        x = (x + d_input[((2 * l_id) + (64 * wg_id))]);
        x = (x + d_input[((1 + (2 * l_id)) + (64 * wg_id))]);
        up1[l_id] = x;
      }
     
    }

    __syncthreads();
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 16);l_id = (l_id + blockDim.x)) {
      /* oclReduceSeq */
      {
        float x;
        x = 0.0f;
        /* unrolling loop of 2 */
        x = (x + up1[(2 * l_id)]);
        x = (x + up1[(1 + (2 * l_id))]);
        up2[l_id] = x;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 8);l_id = (l_id + blockDim.x)) {
      /* oclReduceSeq */
      {
        float x;
        x = 0.0f;
        /* unrolling loop of 2 */
        x = (x + up2[(2 * l_id)]);
        x = (x + up2[(1 + (2 * l_id))]);
        up3[l_id] = x;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 4);l_id = (l_id + blockDim.x)) {
      /* oclReduceSeq */
      {
        float x;
        x = 0.0f;
        /* unrolling loop of 2 */
        x = (x + up3[(2 * l_id)]);
        x = (x + up3[(1 + (2 * l_id))]);
        up4[l_id] = x;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 2);l_id = (l_id + blockDim.x)) {
      /* oclReduceSeq */
      {
        float x;
        x = 0.0f;
        /* unrolling loop of 2 */
        x = (x + up4[(2 * l_id)]);
        x = (x + up4[(1 + (2 * l_id))]);
        up5[l_id] = x;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 1);l_id = (l_id + blockDim.x)) {
      /* oclReduceSeq */
      {
        float x;
        x = 0.0f;
        /* unrolling loop of 2 */
        x = (x + up5[(2 * l_id)]);
        x = (x + up5[(1 + (2 * l_id))]);
        up6[l_id] = x;
      }
     
    }
   
    /* mapSeq */
    /* unrolling loop of 1 */
    d_block_sums[blockIdx.x] = up6[0];
    down1[0] = 0.0f;
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 1);l_id = (l_id + blockDim.x)) {
      /* oclScanSeq */
      {
        float x;
        x = down1[l_id];
        /* unrolling loop of 1 */
        {
          int i = ((int)0);
          down2[(i + (2 * l_id))] = x;
        }
       
        {
          int idx = ((int)0);
          x = (up5[(idx + (2 * l_id))] + x);
        }
       
        down2[(1 + (2 * l_id))] = x;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 2);l_id = (l_id + blockDim.x)) {
      /* oclScanSeq */
      {
        float x;
        x = down2[l_id];
        /* unrolling loop of 1 */
        {
          int idxAcc1329 = ((int)0);
          down3[(idxAcc1329 + (2 * l_id))] = x;
        }
       
        {
          int idx = ((int)0);
          x = (up4[(idx + (2 * l_id))] + x);
        }
       
        down3[(1 + (2 * l_id))] = x;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id = threadIdx.x;(l_id < 4);l_id = (l_id + blockDim.x)) {
      /* oclScanSeq */
      {
        float x;
        x = down3[l_id];
        /* unrolling loop of 1 */
        {
          int idxAcc1332 = ((int)0);
          down4[(idxAcc1332 + (2 * l_id))] = x;
        }
       
        {
          int idx1333 = ((int)0);
          x = (up3[(idx1333 + (2 * l_id))] + x);
        }
       
        down4[(1 + (2 * l_id))] = x;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id_1334 = threadIdx.x;(l_id_1334 < 8);l_id_1334 = (l_id_1334 + blockDim.x)) {
      /* oclScanSeq */
      {
        float x1105;
        x1105 = down4[l_id_1334];
        /* unrolling loop of 1 */
        {
          int idxAcc1335 = ((int)0);
          down5[(idxAcc1335 + (2 * l_id_1334))] = x1105;
        }
       
        {
          int idx1336 = ((int)0);
          x1105 = (up2[(idx1336 + (2 * l_id_1334))] + x1105);
        }
       
        down5[(1 + (2 * l_id_1334))] = x1105;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id_1337 = threadIdx.x;(l_id_1337 < 16);l_id_1337 = (l_id_1337 + blockDim.x)) {
      /* oclScanSeq */
      {
        float x1083;
        x1083 = down5[l_id_1337];
        /* unrolling loop of 1 */
        {
          int idxAcc1338 = ((int)0);
          down6[(idxAcc1338 + (2 * l_id_1337))] = x1083;
        }
       
        {
          int idx1339 = ((int)0);
          x1083 = (up1[(idx1339 + (2 * l_id_1337))] + x1083);
        }
       
        down6[(1 + (2 * l_id_1337))] = x1083;
      }
     
    }
   
    __syncthreads();
    /* mapLocal */
    for (int l_id_1340 = threadIdx.x;(l_id_1340 < 32);l_id_1340 = (l_id_1340 + blockDim.x)) {
      /* oclScanSeq */
      {
        float x1061;
        x1061 = down6[l_id_1340];
        /* unrolling loop of 1 */
        {
          int idxAcc1341 = ((int)0);
          output[((idxAcc1341 + (2 * l_id_1340)) + (64 * wg_id))] = x1061;
        }
       
        {
          int idx1342 = ((int)0);
          x1061 = (d_input[((idx1342 + (2 * l_id_1340)) + (64 * wg_id))] + x1061);
        }
       
        output[((1 + (2 * l_id_1340)) + (64 * wg_id))] = x1061;
      }
     
    }
   
    __syncthreads();
  //}
 
}
