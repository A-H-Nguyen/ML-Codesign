#include <stdint.h>
#include <iostream>
#include "xcl2.hpp"
#include <algorithm>
#include <vector>
#include <fstream>

#include "matmul.hpp"

#define M 4
#define N 4
#define K 4
int main() {
    std::vector<uint8_t, aligned_allocator<uint8_t>> vector_a(M*K);
    std::vector<uint8_t, aligned_allocator<uint8_t>> vector_b(K*N);

    std::vector<uint8_t, aligned_allocator<uint8_t>> hw_results(M*N);
    std::vector<uint8_t, aligned_allocator<uint8_t>> hw_results_gold(M*N);

    uint8_t matrix_a[4][4] = {
        {135, 120, 165,  90},
        {195,  60, 225,  30},
        {255,   0, 135, 120},
        {165,  90, 195,  60}
    };

   uint8_t matrix_b[4][4] = {
        {  0,  28,  57,  85 },
        {113, 142, 170, 198 },
        {227, 255,   0,  28 },
        { 57,  85, 113, 142 }
    };

    for(int i = 0; i < 4; i++){
       for(int j = 0; j < 4; j++){
          vector_a[i*M + j] = matrix_a[i][j];
          vector_b[i*M + j] = matrix_b[i][j];
          hw_results[i*M + j] = 0;
          hw_results_gold[i*M + j]  = 0;
       }
    }

    uint32_t M0 = 1249445032;
    uint32_t n = 6;
    uint32_t zero_a = 135;
    uint32_t zero_b = 0;
    uint32_t zero_out = 201; 
    uint32_t u = M;
    uint32_t v = N;
    uint32_t w = K;


    // DEFINE YOUR KERNEL HERE
    matmul(
        hw_results.data(),
        M0,
	n,
        vector_a.data(),
        vector_b.data(),
        zero_a,
        zero_b,
	zero_out,
        u,
        v,
        w
    );
    
    //hw+results_gold needs to be filled in
    int64_t q_out[4][4] = {0};

    std::cout << "hw gold version" << std::endl;

    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            for (int k = 0; k < 4; ++k) {
                q_out[i][j] += (matrix_a[i][k] - zero_a) * (matrix_b[k][j] - zero_b);
            }
            //std::cout << static_cast<int64_t>(q_out[i][j]) << " ";
            q_out[i][j] *= M0;
            
            q_out[i][j] = q_out[i][j] >> (31 + (n - 2));  // Right shift operation
            q_out[i][j] += (zero_out * 4);
            q_out[i][j] = q_out[i][j] >> 2;  // Right shift by 2
            std::cout << static_cast<int64_t>(q_out[i][j]) << " ";
            if (q_out[i][j] < 0) {
                q_out[i][j] = 0;
            }
        }
    }
    std::cout << std::endl;

    for(int i = 0; i < 4; i++){
       for(int j = 0; j < 4; j++){
          hw_results_gold[i*M + j]  = q_out[i][j];
       }
    }

    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << static_cast<uint16_t>(hw_results_gold[i*w + j]) << " ";
        }
        std::cout << std::endl;
    }

    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << static_cast<uint16_t>(hw_results[i*w + j]) << " ";
        }
        std::cout << std::endl;
    }
 
    bool matrix_correct = true;
    for(auto i = 0; i < u; i++){
        for(auto j = 0; j < w; j++){
            if(hw_results[i*w+j] != hw_results_gold[i*w+j]){
                matrix_correct = false;
            }
        }
    }
    std::cout << "matrix_correct: " << matrix_correct << std::endl;

    return 0;

}
