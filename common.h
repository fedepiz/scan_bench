#ifndef COMMON_H
#define COMMON_H

#include <test.h>
#include <vector>

// The size in floats of each local block. This must be a power of 2 to work.
const int BLOCK_SIZE = 64;

// CPU-local scan
void local_scan_inplace(std::vector<float>& data);


class GpuAlgo {
    protected:
        virtual void block_scans(size_t input_size, float *d_output, float *d_block_sums, float *d_input) const = 0;

    public:
        virtual const char *name() const = 0;
        TestRun run(std::vector<float> input, bool gold_silent) const;
};

class NvidiaAlgo : public GpuAlgo {
    protected:
        void block_scans(size_t input_size, float *d_output, float *d_block_sums, float *d_input) const override;
    public:
        const char *name() const override;
};

class DpiaAlgo : public GpuAlgo {
     protected:
        void block_scans(size_t input_size, float *d_output, float *d_block_sums, float *d_input) const override;
    public:
        const char *name() const override;
};

#endif