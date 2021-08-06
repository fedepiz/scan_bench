#include <test.h>

Timing::Timing(float block_scans_time, float add_time) {
    this->block_scans_time = block_scans_time;
    this->add_time = add_time;
    this->total_time = this->block_scans_time + this->add_time;
}

void Timing::printout() const {
    std::cout << "Timing Report:" << std::endl;
    std::cout << "Block Scans:\t" << block_scans_time << std::endl;
    std::cout << "Add Value:\t" << add_time << std::endl;
    std::cout << "Total:\t\t" << total_time << std::endl;
}

std::string Timing::csv_line(const char* name, int input_size) const {
    std::stringstream ss;
    ss << name << "," << input_size << "," << this->block_scans_time << "," << this->total_time << std::endl;
    return ss.str();
}

Timing Timing::average(const std::vector<Timing>& runs) {
    float block_sums_time = 0.0;
    float add_time = 0.0;
    
    for (const auto& run:runs) {
        block_sums_time += run.block_scans_time;
        add_time += run.add_time;
    }

    block_sums_time = block_sums_time / runs.size();
    add_time = add_time / runs.size();

    return Timing(block_sums_time, add_time);
}


GoldCheck::GoldCheck(const std::vector<float>& output, const std::vector<float>& gold) {
    auto gold_check = true;
    int err_count = 0;
    for (int i = 0; i < output.size(); i++) {
        if (output[i] != gold[i]) {
            gold_check = gold_check && false;
            err_count++;
        }
    }
    this->ok = gold_check;
    this->err_no = err_count;
}

void GoldCheck::printout() const {
    std::cout << "Gold Check:\t";
    if (this->ok) {
        std::cout << "Yes";
    } else {
        std::cout << "No.\tErrors:\t" << this->err_no;
    }
    std::cout << std::endl;
}

void GoldCheck::notify_problems() const {
    if (this->silent)
        return;
        
    if (!this->ok) {
        std::cerr << "WARNING! Gold check failed with " << this->err_no << " errors!" << std::endl;
    }
}


TestRun::TestRun(std::vector<float>&& result, Timing timing, GoldCheck check): timing(timing), check(check) {
    this->result = result;    
}

const Timing TestRun::get_timing() {
    return this->timing;
}

void TestRun::printout() const {
    this->timing.printout();
    this->check.printout();
}

void TestRun::notify_problems() const {
    this->check.notify_problems();
}