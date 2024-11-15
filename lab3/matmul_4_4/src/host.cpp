/**********
Copyright (c) 2019, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/

#include "xcl2.hpp"
#include <algorithm>
#include <vector>
#include <stdint.h>
#include <iostream>
#include <stdio.h>
#include <iomanip>

#define u 4
#define v 4
#define w 4
#define BATCH_SIZE 1  

int main(int argc, char **argv) {


    //Argument processing
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }
    std::string binaryFile = argv[1];

    //Setup our opencl context
    cl_int err;
    cl::Context context;
    cl::CommandQueue q;

    //Create a kernel object
    cl::Kernel krnl_matmul;

    // Allocate Memory in Host Memory
    // We want an aligned allocator for these vectors so that opencl can use them directly
    //Assume scale factor is given from Host

    std::vector<uint8_t, aligned_allocator<uint8_t>> vector_a(u*v);
    std::vector<uint8_t, aligned_allocator<uint8_t>> vector_b(v*w);

    std::vector<uint8_t, aligned_allocator<uint8_t>> hw_results(u*w);


    size_t block_to_accel_bytes_a = sizeof(uint8_t) * u * v;
    size_t block_to_accel_bytes_b = sizeof(uint8_t) * v * w;
    size_t block_from_accel_bytes = sizeof(uint8_t) * u * w;

    uint8_t golden_results[u*w] = {0};

    double matrix_a_og[4][4] = {
        { 0.0000000000, -0.5000000000,  1.0000000000, -1.5000000000},
        { 2.0000000000, -2.5000000000,  3.0000000000, -3.5000000000},
        { 4.0000000000, -4.5000000000,  0.0000000000, -0.5000000000},
        { 1.0000000000, -1.5000000000,  2.0000000000, -2.5000000000}
    };

    double matrix_b_og[4][4] = {
        {0.0000000000, 0.5000000000, 1.0000000000, 1.5000000000},
        {2.0000000000, 2.5000000000, 3.0000000000, 3.5000000000},
        {4.0000000000, 4.5000000000, 0.0000000000, 0.5000000000},
        {1.0000000000, 1.5000000000, 2.0000000000, 2.5000000000}
    };

    double golden_dequant[u][w] = {0};

    for (int i = 0; i < u; i++){
        for(int j = 0; j < w; j++){
            for(int k = 0; k < v; k++){
                golden_dequant[i][j] += matrix_a_og[i][k]*matrix_b_og[k][j];
            }
        }
    }

    //quantized using : q = (r/scale) + z
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

    uint8_t matmul_output[4][4] = {
        {224, 216, 131, 123},
        {255, 246,   8,   0},
        { 54,  45,  39,  31},
        {239, 231,  69,  61}
    };


    for(int i = 0; i < 4; i++){
       for(int j = 0; j < 4; j++){
          vector_a[i*v + j] = matrix_a[i][j];
          vector_b[i*w + j] = matrix_b[i][j];
          golden_results[i*w + j]  = 0;
       }
    }

    uint8_t zero_a = 135;
    uint8_t zero_b = 0;
    uint8_t zero_out = 201;
    uint32_t M0 = 1249445032;
    uint32_t n = 6; 
    double Sout = 0.0647058824;

    //Clear the result
    std::fill(hw_results.begin(), hw_results.end(), 0);
    //std::fill(hw_zero_out.begin(), hw_zero_out.end(), 0);

    int64_t q_out[4][4] = {0};

    //TODO: Produce golden data
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
            //std::cout << static_cast<int64_t>(q_out[i][j]) << " ";
            if (q_out[i][j] < 0) {
                q_out[i][j] = 0;
            }
        }
    }

    for(int i = 0; i < 4; i++){
       for(int j = 0; j < 4; j++){
          golden_results[i*w + j]  = q_out[i][j];
       }
    }



    // OPENCL HOST CODE AREA START
    // get_xil_devices() is a utility API which will find the xilinx
    // platforms and will return list of devices connected to Xilinx platform
    auto devices = xcl::get_xil_devices();
    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    int valid_device = 0;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err,
                  q = cl::CommandQueue(
                      context, {device}, CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i
                  << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        OCL_CHECK(err,
                  cl::Program program(context, {device}, bins, NULL, &err));
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i
                      << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";

            OCL_CHECK(err, krnl_matmul = cl::Kernel(program, "matmul", &err));
            valid_device++;
            break; // we break because we found a valid device

        }
    }
    if (valid_device == 0) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    // Allocate Buffer in Global Memory
    // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and
    // Device-to-host communication
    OCL_CHECK(err,
              cl::Buffer buffer_vec_a(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, //configuration flags
                                    block_to_accel_bytes_a, //lengths we previously defined
                                    vector_a.data(), //raw pointer to data
                                    &err));
    OCL_CHECK(err,
              cl::Buffer buffer_vec_b(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, //configuration flags
                                    block_to_accel_bytes_b, //lengths we previously defined
                                    vector_b.data(), //raw pointer to data
                                    &err));

    OCL_CHECK(err,
              cl::Buffer buffer_hw_results(context,
                                       CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                       block_from_accel_bytes,
                                       hw_results.data(),
                                       &err));

    OCL_CHECK(err, err = krnl_matmul.setArg(0, buffer_hw_results));
    OCL_CHECK(err, err = krnl_matmul.setArg(1, M0));
    OCL_CHECK(err, err = krnl_matmul.setArg(2, n));

    OCL_CHECK(err, err = krnl_matmul.setArg(3, buffer_vec_a));
    OCL_CHECK(err, err = krnl_matmul.setArg(4, buffer_vec_b));
    
    OCL_CHECK(err, err = krnl_matmul.setArg(5, zero_a));
    OCL_CHECK(err, err = krnl_matmul.setArg(6, zero_b));
    OCL_CHECK(err, err = krnl_matmul.setArg(7, zero_out));

    OCL_CHECK(err, err = krnl_matmul.setArg(8, u));
    OCL_CHECK(err, err = krnl_matmul.setArg(9, v));
    OCL_CHECK(err, err = krnl_matmul.setArg(10, w));


    // Copy input data to device global memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_vec_a, buffer_vec_b},
                                               0 /* 0 means from host*/));

    // Launch the Kernel
    // For HLS kernels global and local size is always (1,1,1). So, it is recommended
    // to always use enqueueTask() for invoking HLS kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_matmul));

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_hw_results},
                                               CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();
    // OPENCL HOST CODE AREA END

    bool matrix_correct = true;
    for(auto i = 0; i < u; i++){
        for(auto j = 0; j < w; j++){
            if(hw_results[i*w+j] != golden_results[i*w+j]){
                matrix_correct = false;
            }
        }
    }
    std::cout << "quantized matrix_correct: " << matrix_correct << std::endl;

    std::cout << "hw version" << std::endl;
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << static_cast<uint16_t>(hw_results[i*w + j]) << " ";
        }
        std::cout << std::endl;
    }

    std::cout << "hw gold version" << std::endl;
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << static_cast<uint16_t>(golden_results[i*w + j]) << " ";
        }
        std::cout << std::endl;
    }

    double hw_dequantized[4][4] = {0};
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            hw_dequantized[i][j] = (hw_results[i*w + j] - zero_out)*(Sout);
        }
    }

    std::cout << "hw version dequantized" << std::endl;
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << hw_dequantized[i][j] << " ";
        }
        std::cout << std::endl;
    }

    std::cout << "hw gold version dequantized" << std::endl;
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << golden_dequant[i][j] << " ";
        }
        std::cout << std::endl;
    }

    matrix_correct = true;
    for(auto i = 0; i < u; i++){
        for(auto j = 0; j < w; j++){
            double diff = hw_dequantized[i][j] - golden_dequant[i][j];
            if(diff > 1){
                matrix_correct = false;
            } else if(diff < -1){
                matrix_correct = false;
            }
        }
    }
    std::cout << "dequantized matrix_correct: " << matrix_correct << std::endl;

    return 0;
}