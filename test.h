#ifndef TEST_H
#define TEST_H

#include <vector>
#include <iostream>
#include <sstream>

class Timing {
    public:

    float block_scans_time;
    float add_time;
    float total_time;

    Timing(float block_scans_time, float add_time);
    void printout() const;
    std::string csv_line(const char* name, int input_size) const;
    static Timing average(const std::vector<Timing>& runs);
};

struct GoldCheck {
    private:
    bool ok;
    int err_no;

public:
    bool silent{false};
    
    GoldCheck(const std::vector<float>& output, const std::vector<float>& gold);

    void printout() const;

    void notify_problems() const;
};

class TestRun {
    private:
    std::vector<float> result;
    Timing timing;
    GoldCheck check;

    public:
    TestRun(std::vector<float>&& result, Timing timing, GoldCheck check);

    const Timing get_timing();

    void printout() const;

    void notify_problems() const;
};

#endif