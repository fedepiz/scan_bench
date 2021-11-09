#include <iostream>
#include <vector>
#include <sstream>
#include <algorithm>
//#include <optional>

//#include <argumentum/argparse.h>

#include <common.h>
#include <opencl.h>

#include <fstream>

// std::vector<std::string> split (std::string s, std::string delimiter) {
//     size_t pos_start = 0, pos_end, delim_len = delimiter.length();
//     std::string token;
//     std::vector<std::string> res;

//     while ((pos_end = s.find (delimiter, pos_start)) != std::string::npos) {
//         token = s.substr (pos_start, pos_end - pos_start);
//         pos_start = pos_end + delim_len;
//         res.push_back (token);
//     }

//     res.push_back (s.substr (pos_start));
//     return res;
// }

struct config {
    int minSize;
    int maxSize;
    int step;
    int num_steps;
};


config load_config() {
    config conf;
    conf.minSize = 524288;
    conf.step = 1048576 - conf.minSize;
    conf.maxSize = 2*1048576;// 31981568;
    conf.num_steps = conf.maxSize / conf.minSize;
    return conf;
}

struct data {
    config conf;
    int steps = 0;
    std::vector<size_t> sizes;
    std::vector<float> nvidia;
    std::vector<float> dpia;
    std::vector<float> best;

    size_t exploration_input_size = 0;
    std::vector<DataAlgo> explorations_def;
    std::vector<float> explorations_time;
};

std::vector<float> make_input(size_t size) {
    std::vector<float> input;
    input.reserve(size);
    for (auto i = 0; i < size; i++) {
        float value = i % 5;
        input.push_back(value);
    } 
    return input;
}

void benchmark() {
    data data;
    data.conf = load_config();
    size_t input_size = data.conf.minSize;
    std::cout << "Running generated and nvidia end-to-end" << std::endl;

    while (input_size < data.conf.maxSize) {
        data.steps += 1;
        std::cout << "Step " << data.steps << "/" << data.conf.num_steps << std::endl;
        std::cout << "Size: " << input_size << std::endl;
        data.sizes.push_back(input_size);

        {
            DpiaOpenCLALgo algo;
            auto run = algo.run(std::move(make_input(input_size)), true, 1);
            auto time = run.get_timing().total_time;
            data.dpia.push_back(time);
            std::cout << "Dpia: " << time << std::endl;
        }

        {
            NvidiaOpenCLAlgo algo;
            auto run = algo.run(std::move(make_input(input_size)), true, 1);
            auto time = run.get_timing().total_time;
            data.nvidia.push_back(time);
            std::cout << "NVidia: " << time << std::endl;
        }

        input_size += data.conf.step;
        std::cout << std::endl;
    }


    {
        std::cout << "Running variations" << std::endl;
        auto algos = DataAlgo::load();
        auto input_size = algos[0].input_size;

        for (auto const& algo: algos) {
            // auto run = algo.run(std::move(make_input(input_size)), true, 1);
            // auto time = run.get_timing().block_scans_time;
            auto time = 0.0;

            data.explorations_def.push_back(algo);
            data.explorations_time.push_back(time);
            std::cout << algo.kernel_name << " " << time << std::endl;
        }

        data.exploration_input_size = input_size;
    }

    {
        auto best_idx = 21;
        // auto accum = -1.0;
        // for (int i = 0; i < data.explorations_time.size(); i++) {
        //     auto time = data.explorations_time[i];
        //     if (accum < 0 || time < accum) {
        //         best_idx = i;
        //         accum = time;
        //     }
        // }

        std::cout << "Best variation found at idx " << best_idx << ", re-running it end-to-end" << std::endl;

        
        DataAlgo algo = data.explorations_def[best_idx];
        std::cout << "Best name is: " << algo.kernel_name << std::endl;


        std::cout << "Running" << std::endl;
        algo.run(std::move(make_input(256000)), true, 1);
        std::cout << "Running" << std::endl;
        algo.run(std::move(make_input(256000)), true, 1);
        std::cout << "Running" << std::endl;

        // size_t input_size = data.conf.minSize;
        // size_t step = 0;
        // while (input_size < data.conf.maxSize) {
        //     step += 1;
        //     std::cout << "Step " << step << "/" << data.conf.num_steps << std::endl;
        //     std::cout << "Size: " << input_size << std::endl;
        //     if (input_size % algo.block_size != 0) {
        //         std::cout << "WARNING: Best algorithm has unusual block size" << std::endl;
        //     }

        //     //input_size = algo.input_size;
        //     auto run = algo.run(std::move(make_input(input_size)), true, 1);
        //     auto time = run.get_timing().total_time;
        //     data.best.push_back(time);

        //     input_size += data.conf.step;
        // }
    }

    std::cout << "Writing out result" << std::endl;

    {
        std::ofstream res_file("./comparison.csv", std::ios::trunc);
        res_file << "input, generated, optimized, nvidia";
        for (int i = 0; i < data.steps; i++) {
            res_file << std::endl << data.sizes[i] << "," 
                << data.dpia[i] << "," 
                << data.best[i] << "," 
                << data.nvidia[i];
        }
        res_file << std::endl;
        res_file.flush();
    }

    {
        std::ofstream res_file("./exploration.csv", std::ios::trunc);
        res_file << "input, block size, branch factor, skip depth, time" << std::endl;
        for (int i = 0; i < data.explorations_def.size(); i++) {
            auto const& algo = data.explorations_def[i];
            auto time = data.explorations_time[i];
            res_file << std::endl << algo.input_size << "," << algo.block_size << "," 
                << algo.branching_factor << "," << algo.skip_depth << "," << time;
        }
        res_file << std::endl;
        res_file.flush();
    }

}