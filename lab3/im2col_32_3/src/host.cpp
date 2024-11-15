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
//M = 32, N = 32 for testing
#define M 32
#define N 32
#define CHANNEL_SIZE 3
#define KERNEL_SIZE_M 3
#define KERNEL_SIZE_N 3
#define BATCH_SIZE 1  
#define PADDING 1

template <typename T>
void printVector(const std::vector<uint8_t>& vec) {
    for (const uint8_t& elem : vec) {
        std::cout << static_cast<uint8_t>(elem) << " ";
    }
    std::cout << std::endl;
}

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
    cl::Kernel krnl_im2col;

    // Allocate Memory in Host Memory
    // We want an aligned allocator for these vectors so that opencl can use them directly

    std::vector<uint8_t, aligned_allocator<uint8_t>> vector_a(M*N*CHANNEL_SIZE);
    std::vector<uint8_t, aligned_allocator<uint8_t>> hw_results(1*CHANNEL_SIZE*KERNEL_SIZE_M*KERNEL_SIZE_N*M*N);
    std::vector<int, aligned_allocator<int>> sw_results;

    size_t block_to_accel_bytes = sizeof(uint8_t) * M * N * CHANNEL_SIZE;
    size_t block_from_accel_bytes = sizeof(uint8_t) * 1 * CHANNEL_SIZE * KERNEL_SIZE_M * KERNEL_SIZE_N * M * N;

    std::ifstream f("./src/im2colin.txt");
    if (!f.is_open()) {
        std::cerr << "Error opening the file!";
        return 1;
    }
    int i = 0;
    int s;
    while (f >> s) {
        vector_a[i] = s;
        i++;
    }
    std::cout << "file input size = " << i << std::endl; 
    f.close();
    // for (int i = 0; i < M*N * CHANNEL_SIZE; i++){
    //     vector_a[i] = i % 10;
    // }
    
    //Clear the result
    std::fill(hw_results.begin(), hw_results.end(), 0);
    std::fill(sw_results.begin(), sw_results.end(), 0);

    //TODO: Produce golden data of im2col
    //Padding input matrix with 0s, padding is set to 1 by default.
    int new_vector_m = M + 2 * PADDING;
    int new_vector_n = N + 2 * PADDING;
    std::vector<int> new_vector;
    int start = 0;
    for(int k = 0; k < CHANNEL_SIZE; k++) {
        start = M*N*k;
        for(int j = 0; j < PADDING; j++) {
            for(int i = 0; i < new_vector_n; i++) {
                new_vector.push_back(0);
            }
        }

        for(int j = 0; j < M; j++) {
            new_vector.push_back(0);
            for(int i = 0; i < N; i++) {
                new_vector.push_back(vector_a[start + j * N + i]);
            }
            new_vector.push_back(0);
        }

        for(int i = 0; i < new_vector_n; i++) {
            new_vector.push_back(0);
        }
    }
    // for(int i = 0; i < 108; i++) {
    //     if(i%36 == 0) std::cout << std::endl;
    //     std::cout << new_vector[i] << " ";
    // }
    // std::cout << std::endl;

    uint32_t indexOut = 0;
    // std::cout << std::endl;
    for(int i = 0; i < new_vector_m - KERNEL_SIZE_M + 1; i++) {
        for (int j = 0; j < new_vector_n - KERNEL_SIZE_N + 1; j++) {
            for (int k = 0; k < CHANNEL_SIZE; k++) {
                start = i * new_vector_n + j + k*new_vector_m*new_vector_n;
                for(int l = 0; l < KERNEL_SIZE_M; l++) {
                    for (int m = 0; m < KERNEL_SIZE_N; m++) {
                        sw_results.push_back(new_vector[start + l*new_vector_n + m]);
                        // std::cout << sw_results[indexOut];
                        indexOut++;
                    }
                }
            }
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

            OCL_CHECK(err, krnl_im2col = cl::Kernel(program, "im2col", &err));
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
                                    block_to_accel_bytes, //lengths we previously defined
                                    vector_a.data(), //raw pointer to data
                                    &err));

    OCL_CHECK(err,
              cl::Buffer buffer_hw_results(context,
                                       CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                       block_from_accel_bytes,
                                       hw_results.data(),
                                       &err));


    OCL_CHECK(err, err = krnl_im2col.setArg(0, buffer_vec_a));
    OCL_CHECK(err, err = krnl_im2col.setArg(1, buffer_hw_results));
    OCL_CHECK(err, err = krnl_im2col.setArg(2, M));
    OCL_CHECK(err, err = krnl_im2col.setArg(3, N));
    OCL_CHECK(err, err = krnl_im2col.setArg(4, CHANNEL_SIZE));
    OCL_CHECK(err, err = krnl_im2col.setArg(5, 3));
    OCL_CHECK(err, err = krnl_im2col.setArg(6, 3));

    // Copy input data to device global memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_vec_a},
                                               0 /* 0 means from host*/));

    // Launch the Kernel
    // For HLS kernels global and local size is always (1,1,1). So, it is recommended
    // to always use enqueueTask() for invoking HLS kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_im2col));

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_hw_results},
                                               CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();
    // OPENCL HOST CODE AREA END
    // print hw_result
    // for(int i = 0; i < 1*CHANNEL_SIZE*(M-KERNEL_SIZE_M+1)*(N-KERNEL_SIZE_N+1); i++){
    //     std::cout << (uint32_t)hw_results[i] << " ";
    // }
    //print veca
    // for(int i = 0; i < M*N*CHANNEL_SIZE; i++){
    //     std::cout << (uint32_t)vector_a[i] << " ";
    // }

    std::cout << std::endl;

    bool result_match = true;
    for(auto c = 0; c < hw_results.size(); c++) {
        if((uint32_t) hw_results[c] != (uint32_t) sw_results[c]) {
            std::cout << "The hardware result is not matching golden result at " << c; 
            result_match = false;
        }
    }
    std::cout << "The result match:" << result_match << std::endl;
    // for(auto c = 0; c < 108; c++){
    //     std::cout << (uint32_t)hw_results[c] << " ";
    // }
    // for(auto c = 0; c<hw_results.size(); c++){
    //     std::cout << (uint32_t)hw_results[c] << " ";
    // }
    // std::cout << std::endl;

    // for(auto c = 0; c<sw_results.size(); c++){
    //     std::cout << (uint32_t)sw_results[c] << " ";
    // }

    return 0;
}