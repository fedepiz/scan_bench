#ifndef OPENCL_H
#define OPENCL_H
#define CL_TARGET_OPENCL_VERSION 120
#include <vector>
#include <test.h>
#include <common.h>

class OpenCLAlgo : public GpuAlgo {
    protected:
        virtual const char *block_scan_kernel_name() const = 0;

    public:
        virtual TestRun run(std::vector<float> input, bool gold_silent, int repeat) const; 
};

class NvidiaOpenCLAlgo : public OpenCLAlgo {
    protected:
        const char *block_scan_kernel_name() const {
            return "nvidia_block_sums";
        }
    public:
        const char* name() const {
            return "ocl nvidia";
        }
};

class DpiaOpenCLALgo : public OpenCLAlgo {
    protected:
        const char *block_scan_kernel_name() const {
            return "dpia_block_sums";
        }
    public:
        const char* name() const {
            return "ocl dpia";
        }
};



class DataAlgo: public GpuAlgo {
    public:
        std::string kernel_name;
        size_t input_size;
        size_t block_size;
        size_t skip_depth;
        size_t depth;
        size_t branching_factor;
        size_t global_size;
        size_t local_size;

        const char *name() const {
            return this->kernel_name.c_str();
        }
        virtual TestRun run(std::vector<float> input, bool gold_silent, int repeat) const;
        static std::vector<DataAlgo> load();
};

#endif
