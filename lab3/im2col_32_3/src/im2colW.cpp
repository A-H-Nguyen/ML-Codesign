#include <stdint.h>
// #include <ap_int.h>
#include "im2colW.hpp"
#include <iostream>

extern "C" {

void im2colW(
    const uint8_t *in, 
    uint8_t *out,      
    uint32_t src_m,
    uint32_t src_n,
    uint32_t src_c,
    uint32_t kernel_size_m,
    uint32_t kernel_size_n
    // const int* new_vector
)

  {
    #pragma HLS INTERFACE m_axi port=in bundle=wrapper0
    #pragma HLS INTERFACE m_axi port=out bundle=wrapper0
    #pragma HLS INTERFACE s_axilite port=src_m
    #pragma HLS INTERFACE s_axilite port=src_n
    #pragma HLS INTERFACE s_axilite port=src_c
    #pragma HLS INTERFACE s_axilite port=kernel_size_m
    #pragma HLS INTERFACE s_axilite port=kernel_size_n

    // global read write buffer 1MB intialized to zero
    uint8_t global_sram[1024*1024] = {0};     
    uint32_t src_m_tmp[1] = {src_m};
    uint32_t src_n_tmp[1] = {src_n};
    uint32_t src_c_tmp[1] = {src_c};
    uint32_t kernel_size_m_tmp[1] = {kernel_size_m};
    uint32_t kernel_size_n_tmp[1] = {kernel_size_n};
    // load the array 
    uint32_t total_inp_el = src_m_tmp[0] * src_n_tmp[0] * src_c_tmp[0];
    uint32_t new_vector_start = total_inp_el;
    uint32_t new_vindex = new_vector_start;

    auto channels = src_c_tmp[0];
    auto height = src_m_tmp[0];
    auto width = src_n_tmp[0];
    auto ksize = kernel_size_m_tmp[0];
    auto stride = 1;
    auto pad = 1;
    for (int ii = 0; ii < total_inp_el; ++ii){
      global_sram[ii] = in[ii];
    }
    // im2col_inter();
    int new_vector_m = height + 2 * 1;
    int new_vector_n = width + 2 * 1;
    int start = 0;
    for(int k = 0; k < channels; k++) {
        start = height*width*k;
        for(int j = 0; j < 1; j++) {
            for(int i = 0; i < new_vector_n; i++) {
              global_sram[new_vindex] = 0;
              new_vindex++;
            }
        }

        for(int j = 0; j < height; j++) {
            global_sram[new_vindex] = 0;
            new_vindex++;
            for(int i = 0; i < width; i++) {
                global_sram[new_vindex] = (global_sram[start + j * width + i]);
                new_vindex++;
            }
            global_sram[new_vindex] = 0;
            new_vindex++;
        }

        for(int i = 0; i < new_vector_n; i++) {
            global_sram[new_vindex] = 0;
            new_vindex++;
        }
    }

    // std::cout << "print modified new_vector" << std::endl;
    // for(int i = 0; i < 108; i++) {
    //     if(i%36 == 0) std::cout << std::endl;
    //     std::cout << global_sram[i + new_vector_start];
    // }
    // std::cout << std::endl;

    uint32_t indexOut = new_vindex;

    //set output to 0
    for(int i = 0; i < height * width * ksize * ksize * channels; i++) {
        global_sram[i + indexOut] = 0;
    }
    int patch_num = 0;
    // std::cout << std::endl;
    for(int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            for (int k = 0; k < channels; k++) {
                start = i*new_vector_n + j + k*new_vector_m*new_vector_n;
                for(int l = 0; l < ksize; l++) {
                    for (int m = 0; m < ksize; m++) {
                        int col = patch_num;
                        int row = k * ksize * ksize + l * ksize + m;
                        global_sram[col + row*height*width + indexOut] = (global_sram[start + l*new_vector_n + m + new_vector_start]);
                        // std::cout << sw_results[indexOut];
                    }
                }
            }
            patch_num++;
        }
    }

    auto n = 1;
    auto c = channels * ksize * ksize;
    auto l = height * width;

    uint32_t total_output_el = n * c * l;
    for (int ii = 0; ii < total_output_el; ++ii){
      out[ii] = global_sram[ii + indexOut];
    }

 };



}
