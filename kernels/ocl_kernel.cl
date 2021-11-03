#define BLOCK_SIZE 256


__kernel void nvidia_block_sums(__global float* g_idata, __global float* g_odata, __global float* g_sums) {
    __local float temp[BLOCK_SIZE];

    // Downsweep
    int thid = get_local_id(0);
    int block_offset = 2 * (get_global_id(0)/get_local_size(0)) * get_local_size(0);
    int offset = 1;

    // Performs the first iteration immediately
    if (thid < BLOCK_SIZE/2) {
    temp[thid] = g_idata[block_offset + 2 * thid] + g_idata[block_offset + 2 * thid + 1];
    }
    // Upsweep
    for (int d = BLOCK_SIZE >> 2; d > 0; d >>= 1) {
        barrier(CLK_LOCAL_MEM_FENCE);
        if (thid < d) {
             int ai = offset*(2*thid+1)-1;     
             int bi = offset*(2*thid+2)-1;
             temp[bi] += temp[ai];
        }
        offset *= 2;
    }

    // clear the last element & record block sum
     if (thid == 0) {
         g_sums[get_global_id(0)/get_local_size(0)] = temp[BLOCK_SIZE-1];
         temp[BLOCK_SIZE - 1] = 0; 
    }

    // Downsweep
     for (int d = 1; d < BLOCK_SIZE; d *= 2) {
         offset >>= 1;
         barrier(CLK_LOCAL_MEM_FENCE);
         if (thid < d) {
             int ai = offset * (2 * thid + 1) - 1;
             int bi = offset * (2 * thid + 2) - 1;
             float t = temp[ai];
             temp[ai] = temp[bi];
             temp[bi] += t;
         }
     }
    barrier(CLK_LOCAL_MEM_FENCE);


    g_idata[block_offset + 2 * thid] = temp[2 * thid + 1];
    g_idata[block_offset + 2 * thid + 1] = temp[2 * thid] + temp[2 * thid + 1];
}



__kernel void nvidia_block_sums2(__global float* g_idata, __global float* g_odata, __global float* g_sums) {
    __local float temp[BLOCK_SIZE];

    // Downsweep
    int thid = get_local_id(0);
    int block_offset = 2 * (get_global_id(0)/get_local_size(0)) * get_local_size(0);
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
         g_sums[get_global_id(0)/get_local_size(0)] = temp[BLOCK_SIZE-1];
         temp[BLOCK_SIZE - 1] = 0; 
    }

    // Downsweep
     for (int d = 1; d < BLOCK_SIZE; d *= 2) {
         offset >>= 1;
         barrier(CLK_LOCAL_MEM_FENCE);
         if (thid < d) {
             int ai = offset * (2 * thid + 1) - 1;
             int bi = offset * (2 * thid + 2) - 1;
             float t = temp[ai];
             temp[ai] = temp[bi];
             temp[bi] += t;
         }
     }
    barrier(CLK_LOCAL_MEM_FENCE);

     // Write out output
     g_odata[block_offset + 2 * thid] = temp[2 * thid];
     g_odata[block_offset + 2 * thid + 1] = temp[2 * thid + 1];
}

__kernel void dpia_block_sums(__global float* d_input, __global float* output, __global float* d_block_sums)
{
  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  __local float up1[32];
  __local float up2[16];
  __local float up3[8];
  __local float up4[4];
  __local float up5[2];
  __local float up6[1];

  __local float down1[1];
  __local float down2[2];
  __local float down3[4];
  __local float down4[8];
  __local float down5[16];
  __local float down6[32];

  //for (int wg_id = blockIdx.x;(wg_id < 256);wg_id = (wg_id + gridDim.x)) {
  int wg_id = get_global_id(0)/get_local_size(0);
  /* mapLocal */
  for (int l_id = get_local_id(0); (l_id < 32); l_id = (l_id + get_local_size(0)))
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

    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 16);l_id = (l_id + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 8);l_id = (l_id + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 4);l_id = (l_id + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 2);l_id = (l_id + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 1);l_id = (l_id + get_local_size(0))) {
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
    if (get_local_id(0) == 0) {
        d_block_sums[wg_id] = up6[0];
        down1[0] = 0.0f;
    }
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 1);l_id = (l_id + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 2);l_id = (l_id + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id = get_local_id(0);(l_id < 4);l_id = (l_id + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1334 = get_local_id(0);(l_id_1334 < 8);l_id_1334 = (l_id_1334 + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1337 = get_local_id(0);(l_id_1337 < 16);l_id_1337 = (l_id_1337 + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1340 = get_local_id(0);(l_id_1340 < 32);l_id_1340 = (l_id_1340 + get_local_size(0))) {
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
   
    barrier(CLK_LOCAL_MEM_FENCE);
}

__kernel void opencl_add(__global float* partials, __global float* block_sums) {
    float value = block_sums[get_global_id(0)];

    for (auto i = 0; i < BLOCK_SIZE; i++) {
        partials[BLOCK_SIZE * get_global_id(0) + i] += value;
    }
}

__kernel void opencl_add2(__global float* partials, __global float* block_sums) {
    float value = block_sums[get_group_id(0)];

    partials[BLOCK_SIZE * get_group_id(0) + get_local_id(0)] += value;
}