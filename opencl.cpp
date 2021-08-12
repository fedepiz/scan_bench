#include <opencl.h>
#include <common.h>

#include <CL/opencl.h>

#include <vector>
#include <iostream>
#include <string>
#include <fstream>

#define gpuErrchk(ans) { gpuAssert((ans), __FILE__, __LINE__); }
inline void gpuAssert(cl_int code, const char *file, int line, bool abort=true)
{
   if (code != CL_SUCCESS) 
   {
      printf("GPUassert: Error no:%d %s %d\n", code, file, line);
      if (abort) exit(code);
   }
}

#define SUCCESS 0
#define FAILURE 1

/* convert the kernel file into a string */
int convertToString(const char *filename, std::string& s)
{
	size_t size;
	char*  str;
	std::fstream f(filename, (std::fstream::in | std::fstream::binary));

	if (f.is_open())
	{
		size_t fileSize;
		f.seekg(0, std::fstream::end);
		size = fileSize = (size_t)f.tellg();
		f.seekg(0, std::fstream::beg);
		str = new char[size + 1];
		if (!str)
		{
			f.close();
			return 0;
		}

		f.read(str, fileSize);
		f.close();
		str[size] = '\0';
		s = str;
		delete[] str;
		return 0;
	}
	std::cout << "Error: failed to open file\n:" << filename << std::endl;
	return FAILURE;
}

double event_time(cl_event event) {
    cl_ulong time_start;
    cl_ulong time_end;

    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start, NULL);
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, NULL);

    double nanoSeconds = time_end-time_start;
    return nanoSeconds / 1000000.0;
}

TestRun OpenCLAlgo::run(std::vector<float> input, bool gold_silent) const {
    auto input_size = input.size();

    auto gold = input;
    local_scan_inplace(gold);

    cl_uint numPlatforms;
    cl_platform_id platform = NULL;
    gpuErrchk(clGetPlatformIDs(0, NULL, &numPlatforms));

	/*For clarity, choose the first available platform. */
    if (numPlatforms > 0) {
		cl_platform_id* platforms = 
                     (cl_platform_id*)malloc(numPlatforms * sizeof(cl_platform_id));
        gpuErrchk(clGetPlatformIDs(numPlatforms, platforms, NULL));
        platform = platforms[0];
		free(platforms);
	}

    cl_uint numDevices = 0;
	cl_device_id        *devices;
	gpuErrchk(clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 0, NULL, &numDevices));
	if (numDevices == 0) //no GPU available.
	{
		std::cout << "No GPU device available." << std::endl;
		std::cout << "Choose CPU as default device." << std::endl;
		gpuErrchk(clGetDeviceIDs(platform, CL_DEVICE_TYPE_CPU, 0, NULL, &numDevices));
		devices = (cl_device_id*)malloc(numDevices * sizeof(cl_device_id));
		gpuErrchk(clGetDeviceIDs(platform, CL_DEVICE_TYPE_CPU, numDevices, devices, NULL));
	}
	else
	{
		devices = (cl_device_id*)malloc(numDevices * sizeof(cl_device_id));
		(clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, numDevices, devices, NULL));
	}
    
	/*Step 3: Create context.*/
	cl_context context = clCreateContext(NULL, 1, devices, NULL, NULL, NULL);
    /*Step 4: Creating command queue associate with the context.*/
	cl_command_queue commandQueue = clCreateCommandQueue(context, devices[0], CL_QUEUE_PROFILING_ENABLE, NULL);

    /*Step 5: Create program object */
	std::string sourceStr;
	gpuErrchk(convertToString("kernels/ocl_kernel.cl", sourceStr));
	const char *source = sourceStr.c_str();
	size_t sourceSize[] = { strlen(source) };
	cl_program program = clCreateProgramWithSource(context, 1, &source, sourceSize, NULL);

    /*Step 6: Build program. */
	gpuErrchk(clBuildProgram(program, 1, devices, NULL, NULL, NULL));

    auto num_blocks = input_size/BLOCK_SIZE;
    auto threads_per_block = BLOCK_SIZE / 2;


    // Allocate device memory
    cl_mem d_inputs = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(float) * input_size, (void*)input.data(), NULL);
    cl_mem d_output = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(float) * input_size, NULL, NULL);
    cl_mem d_block_sums = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(float) * num_blocks, NULL, NULL);

    cl_kernel kernel = clCreateKernel(program, this->block_scan_kernel_name(), NULL);

    gpuErrchk(clSetKernelArg(kernel, 0, sizeof(cl_mem), (void *)&d_inputs));
    gpuErrchk(clSetKernelArg(kernel, 1, sizeof(cl_mem), (void *)&d_output));
    gpuErrchk(clSetKernelArg(kernel, 2, sizeof(cl_mem), (void *)&d_block_sums));

    auto global_size = num_blocks * threads_per_block;
    size_t global_work_size[1] = { num_blocks * threads_per_block };
    size_t local_work_size[1] = { (size_t)threads_per_block };

    cl_event block_scan_event;
    gpuErrchk(clEnqueueNDRangeKernel(commandQueue, kernel, 1, NULL, global_work_size, local_work_size, 0, NULL, &block_scan_event));

    // std::vector<float> output;
    // output.resize(input_size);
    // gpuErrchk(clEnqueueReadBuffer(commandQueue, d_output, true, 0, sizeof(float) * input_size, (void *)output.data(), 0, NULL, NULL));

    std::vector<float> block_sums;
    block_sums.resize(num_blocks);
    gpuErrchk(clEnqueueReadBuffer(commandQueue, d_block_sums, true, 0, sizeof(float) * num_blocks, (void *)block_sums.data(), 0, NULL, NULL));
    

    local_scan_inplace(block_sums);
    gpuErrchk(clEnqueueWriteBuffer(commandQueue, d_block_sums, true, 0, sizeof(float) * num_blocks, (void *)block_sums.data(), 0, NULL, NULL));

    cl_int err_no;
    cl_kernel kernel2 = clCreateKernel(program, "opencl_add", &err_no);
    gpuErrchk(err_no);

    gpuErrchk(clSetKernelArg(kernel2, 0, sizeof(cl_mem), (void *)&d_output));
    gpuErrchk(clSetKernelArg(kernel2, 1, sizeof(cl_mem), (void *)&d_block_sums));
    global_work_size[0] = num_blocks;

    cl_event add_event;
    gpuErrchk(clEnqueueNDRangeKernel(commandQueue, kernel2, 1, NULL, global_work_size, NULL, 0, NULL, &add_event));

    std::vector<float> output;
    output.resize(input_size);
    gpuErrchk(clEnqueueReadBuffer(commandQueue, d_output, true, 0, sizeof(float) * input_size, (void *)output.data(), 0, NULL, NULL));

    clFinish(commandQueue);
    clWaitForEvents(1, &block_scan_event);
    clWaitForEvents(1, &add_event);

    float block_scans_time = event_time(block_scan_event);
    float add_time = event_time(add_event);
    Timing timing(block_scans_time, add_time);
    GoldCheck check(output, gold);
    check.silent = gold_silent;

    gpuErrchk(clReleaseEvent(block_scan_event));
    gpuErrchk(clReleaseEvent(add_event));
    gpuErrchk(clReleaseKernel(kernel)); //Release kernel.
    gpuErrchk(clReleaseKernel(kernel2)); //Release kernel.
	gpuErrchk(clReleaseProgram(program)); //Release the program object.
	gpuErrchk(clReleaseMemObject(d_inputs)); //Release mem object.
	gpuErrchk(clReleaseMemObject(d_output));
    gpuErrchk(clReleaseMemObject(d_block_sums));
	gpuErrchk(clReleaseCommandQueue(commandQueue)); //Release  Command queue.
	gpuErrchk(clReleaseContext(context)); //Release context.

    return TestRun(std::move(output), timing, check);
}
