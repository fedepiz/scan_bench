#include <common.h>

// CPU-local scan
void local_scan_inplace(std::vector<float>& data) {
    float accum = 0.0;
    for (auto i = 0; i < data.size(); i++) {
        float next = data[i] + accum;
        data[i] = accum;
        accum = next;
    }
}