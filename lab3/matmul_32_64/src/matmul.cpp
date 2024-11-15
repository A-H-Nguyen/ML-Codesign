#include <stdint.h>
// #include <ap_int.h>
#include "matmul.hpp"
#include <iostream>

extern "C" {
  void matmul(
    uint8_t* out,
    const uint32_t M0,
    const uint32_t n, 
    const uint8_t* a, 
    const uint8_t* b, 
    const uint8_t zero_a,
    const uint8_t zero_b,
    const uint8_t zero_out,
    uint32_t u,
    uint32_t v,
    uint32_t w
)
  {
    #pragma HLS INTERFACE m_axi port=out bundle=wrapper0
    #pragma HLS INTERFACE m_axi port=M0 bundle=wrapper0
    #pragma HLS INTERFACE m_axi port=n bundle=wrapper0
    #pragma HLS INTERFACE m_axi port=a bundle=wrapper0
    #pragma HLS INTERFACE m_axi port=b bundle=wrapper0
    #pragma HLS INTERFACE s_axilite port=zero_a
    #pragma HLS INTERFACE s_axilite port=zero_b
    #pragma HLS INTERFACE s_axilite port=zero_out
    #pragma HLS INTERFACE s_axilite port=u
    #pragma HLS INTERFACE s_axilite port=v
    #pragma HLS INTERFACE s_axilite port=w

    // global read write buffer 1MB intialized to zero
    uint8_t global_sram[1024*1024] = {0};
    uint32_t M0_tmp[1] = {M0};
    uint32_t n_tmp[1] = {n};
    uint8_t zero_a_tmp[1] = {zero_a};
    uint8_t zero_b_tmp[1] = {zero_b};
    uint8_t zero_out_tmp[1] = {zero_out};
    // load the array 
    uint32_t mat_a_start_addr = 0;
    uint32_t mat_b_start_addr = (u * v);
    uint32_t total_inp_el = u * v + v * w;
    
    uint32_t out_start_addr = total_inp_el;
    uint32_t total_out_el = u * w;

    // out = A*B

    for(auto ii = 0; ii< 64*32; ++ii){
      global_sram[mat_a_start_addr + ii] = a[ii];
    }
    for(auto ii = 0; ii< 64*32; ++ii){
      global_sram[mat_b_start_addr + ii] = b[ii];
    }

    //matmul_inter();
    uint8_t* matrix_a = &global_sram[mat_a_start_addr];
    uint8_t* matrix_b = &global_sram[mat_b_start_addr];
    int64_t value = 0;
    int64_t val_a = 0;
    int64_t val_b = 0;
    int64_t za = zero_a_tmp[0];
    int64_t zb = zero_b_tmp[0];

    //std::cout << "hw version" << std::endl;
    //std::cout << n << std::endl;

/*
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << static_cast<uint16_t>(matrix_a[i*w + j]) << " ";
        }
        std::cout << std::endl;
    }

    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << static_cast<uint16_t>(matrix_b[i*w + j]) << " ";
        }
        std::cout << std::endl;
    }
    */

    //std::cout << "hw version" << std::endl;

    for (int i = 0; i < 64; ++i) {
        for (int j = 0; j < 64; ++j) {
            value = 0;
            for (int k = 0; k < 32; ++k) {
                val_a = matrix_a[i*v + k];
                val_b = matrix_b[k*w + j];
                value += (val_a - za) * (val_b - zb);
            }
            value *= M0_tmp[0];
            
            value = value >> (31 + (n_tmp[0]));  // Right shift operation
            value += (zero_out_tmp[0]);
            value = (value < 0) ? 0 : value;
            value = (value > 255) ? 255 : value;
            global_sram[out_start_addr + i*w + j] = value;
        }
    }
    //std::cout << std::endl;

    // write the array 
    for (int ii = 0; ii < 64*64; ++ii){
      out[ii] = global_sram[out_start_addr + ii];
    }
    //zero_out = zero_out_tmp[0];
  };



}
