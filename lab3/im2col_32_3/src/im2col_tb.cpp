#include <stdint.h>
#include <iostream>
#include "xcl2.hpp"
#include <algorithm>
#include <vector>
#include <fstream>

#include "im2col.hpp"

#define M 8
#define N 8
#define CHANNEL_SIZE 3
#define KERNEL_SIZE_M 3
#define KERNEL_SIZE_N 3

int main() {
    std::vector<uint8_t, aligned_allocator<uint8_t>> vector_a(M*N*CHANNEL_SIZE);
    std::vector<uint8_t, aligned_allocator<uint8_t>> hw_results(1*CHANNEL_SIZE*KERNEL_SIZE_M*KERNEL_SIZE_N*M*N);
    std::vector<uint8_t, aligned_allocator<uint8_t>> hw_results_gold(1*CHANNEL_SIZE*KERNEL_SIZE_M*KERNEL_SIZE_N*M*N);

    std::string line;
    std::ifstream infile("src/im2colin.txt");
    auto count = 0;

    if(infile.is_open()){
        while(getline(infile, line)){
            if(count < vector_a.size()){
                vector_a[count] = std::stoi(line);
            }
            else if(count < vector_a.size() + hw_results_gold.size()){
                hw_results_gold[count - vector_a.size()] = std::stoi(line);
            }
            else{
                break;
            }
            count++;
        }
        infile.close();
    }
    else{
        std::cout << "Unable to open file" << std::endl;
    }

    im2col(
        vector_a.data(),
        hw_results.data(),
        M,
        N,
        CHANNEL_SIZE,
        KERNEL_SIZE_M,
        KERNEL_SIZE_N
    );

    bool correct = true;
    for(auto i = 0; i < hw_results.size(); i++){
        if(hw_results[i] != hw_results_gold[i]){
            correct = false;
        }
    }


    std::cout << "correct: " << correct << std::endl;

    return 0;

}