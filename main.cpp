#include <iostream>
#include <vector>
#include <sstream>
#include <algorithm>
#include <optional>

#include <argumentum/argparse.h>

#include <common.h>
#include <test.h>
#include <opencl.h>

struct conf {
    unsigned int step_size;
    unsigned int run_per_size;
    unsigned int num_sizes;
    bool gold_check;
};

struct byte_size {
    float amount;
    const char *suffix;

    static byte_size compute(unsigned int size) {
        const unsigned int kb = 1000;
        const unsigned int mb = 1000000;
        const unsigned int gb = 1000000000;
        byte_size sz;
        if (size < kb) {
            sz.amount = size;
            sz.suffix = "b";
        }
        else if (size < mb) {
            sz.amount = (float)((int)(size / kb * 100)) / 100.0f;
            sz.suffix = "kb";
        } else if (size < gb) {
            sz.amount = (float)((int)(size / mb * 100)) / 100.0f;
            sz.suffix = "mb";
        } else {
            sz.amount = (float)((int)(size / gb * 100)) / 100.0f;
            sz.suffix = "gb";
        }
        return sz;
    }
};

std::vector<std::string> run_test(const conf& conf, const GpuAlgo& algo) {
    std::cout << "running algorithm " << algo.name() << std::endl;
    std::vector<std::string> output(conf.num_sizes);

    // for each size we have...
    for (int size_n = 0; size_n < conf.num_sizes; size_n++) {
        // construct input
        auto input_size = (size_n + 1) * BLOCK_SIZE * conf.step_size;
        std::vector<float> sample_input(input_size);
        for (auto i = 0; i < input_size; i++) {
            sample_input[i] = (i % 10) + 1;
        }

        byte_size bs = byte_size::compute(input_size * sizeof(float));

        std::cout << "input size:" << input_size << "\t\t" << bs.amount << bs.suffix << "\trun number:\t" << (size_n + 1) << "/" << conf.num_sizes << std::endl;

        // execute each run and collect its timing
        std::vector<Timing> runs;
        std::cout << "Repeat ";
        for (auto i = 0; i < conf.run_per_size; i++) {
            std::cout << (i + 1) << " ";
            auto run = algo.run(sample_input, !conf.gold_check);
            run.notify_problems();
            runs.push_back(run.get_timing());
        }
        std::cout << std::endl;
        auto average = Timing::average(runs);
        average.printout();
        output.push_back(average.csv_line(algo.name(), input_size));
    }

    return output;
}

constexpr int DEFAULT_STEP_SIZE = 4096;
constexpr int MIN_DIVIDER = 256;
constexpr int DEFAULT_NUM_STEPS = 64;
constexpr int DEFAULT_RUNS_PER_STEP = 10;

bool handle_arguments(conf& conf, int argc, char** argv) {
    using namespace argumentum;

    std::optional<int> step_size_param;
    std::optional<int> num_steps_param;
    std::optional<int> runs_per_step_param;
    bool gold_check_param = false;

    conf.step_size = DEFAULT_STEP_SIZE;

    auto parser = argument_parser();
    auto params = parser.params();
    parser.config().program(argv[0]).description("Scan experimental bench");
    params.add_parameter(step_size_param, "--step_size", "-s").nargs(1).help("Input increment per step size");
    params.add_parameter(num_steps_param, "--num_steps", "-n").nargs(1).help("Total number of steps");
    params.add_parameter(runs_per_step_param, "--runs", "-r").nargs(1).help("Repeat runs per step");
    params.add_parameter(gold_check_param, "--gold", "-g").nargs(0).help("Enable gold checking (use only with small inputs)");

    if (!parser.parse_args(argc, argv, 1))
        return false;

    conf.step_size = DEFAULT_STEP_SIZE;
    if (step_size_param == std::nullopt) {
        std::cout << "Using default step size: " << DEFAULT_STEP_SIZE << std::endl;
    } else {
        conf.step_size = *step_size_param;
        if (conf.step_size < MIN_DIVIDER || conf.step_size % MIN_DIVIDER != 0) {
            std::cout << "Invalid step size: " << conf.step_size << " must be divisible by " << MIN_DIVIDER << std::endl;
            return false;
        }
    }

    conf.num_sizes = DEFAULT_NUM_STEPS;
    if (num_steps_param == std::nullopt) {
        std::cout << "Using default number of steps: " << conf.num_sizes << std::endl;
    }
    else {
        conf.num_sizes = *num_steps_param;
        if (conf.num_sizes < 0) {
            std::cout << "Invalid number of steps: " << conf.num_sizes << " must be a positive integer" << std::endl;
            return false;
        }
    }

    conf.run_per_size = DEFAULT_RUNS_PER_STEP;
    if (runs_per_step_param == std::nullopt) {
        std::cout << "Using default number of runs per step: " << conf.run_per_size << std::endl;
    }
    else {
        conf.run_per_size = *runs_per_step_param;
        if (conf.run_per_size < 1) {
            std::cout << "Invalid number of runs per step: " << conf.run_per_size << " must be > 0" << std::endl;
            return false;
        }
    }

    conf.gold_check = gold_check_param;
    const char *status;
    if (conf.gold_check) {
        status = "enabled";
    } else {
        status = "disabled";
    }
    std::cout << "Gold check is: " << status << std::endl;

    return true;
}

int main(int argc, char** argv) {

    conf conf;
    if (!handle_arguments(conf, argc, argv)) {
        std::cout << "Program aborted" << std::endl;
        return 0;
    }
     
    std::vector<std::string> lines;

    {
        DpiaOpenCLALgo algo;
        auto result = run_test(conf, algo);
        lines.reserve(lines.size() + result.size());
        std::move(std::begin(result), std::end(result), std::back_inserter(lines));
    }

     {
        NvidiaOpenCLAlgo algo;
        auto result = run_test(conf, algo);
        lines.reserve(lines.size() + result.size());
        std::move(std::begin(result), std::end(result), std::back_inserter(lines));
    }

    {
        NvidiaAlgo algo;
        auto result = run_test(conf, algo);
        lines.reserve(lines.size() + result.size());
        std::move(std::begin(result), std::end(result), std::back_inserter(lines));
    }

    {
        DpiaAlgo algo;
        auto result = run_test(conf, algo);
        lines.reserve(lines.size() + result.size());
        std::move(std::begin(result), std::end(result), std::back_inserter(lines));
    }

     // printout results as csv to stdout
    for (const auto& line:lines) {
        std::cout << line;
    }

    return 0;
}