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

// TODO (1): Define the size of the vector
#define VECTOR_SIZE 16
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
    cl::Kernel krnl_dot_prod;


    // Allocate Memory in Host Memory
    // We want an aligned allocator for these vectors so that opencl can use them directly

    //TODO (2): Define sizes of the vectors on the SW side
    std::vector<int, aligned_allocator<int>> vector_a(VECTOR_SIZE);
    std::vector<int, aligned_allocator<int>> vector_b(VECTOR_SIZE);
    std::vector<int, aligned_allocator<int>> hw_results(1);
    std::vector<int, aligned_allocator<int>> sw_results(1);

    //TODO (3): Define the sizes of the Transfers to / from the accelerator
    size_t block_to_accel_bytes = sizeof(int) * VECTOR_SIZE;
    size_t block_from_accel_bytes = sizeof(int) * 1;

    //TODO (4): Generate some data to test with
    //Can do random or just asymmetrical
    for (int i = 0; i < VECTOR_SIZE; i++){
	    vector_a[i] = i;
    	vector_b[i] = i+10;
    }
    
    //Clear the result
    std::fill(hw_results.begin(), hw_results.end(), 0);
    std::fill(sw_results.begin(), sw_results.end(), 0);

    //TODO (5): Produce golden data
    for (int i = 0; i < VECTOR_SIZE; i++) {
	sw_results[0] += vector_a[i] * vector_b[i];
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

            //TODO (6): Get the kernel out of the built hardware
            //This magic string needs to match the name of the kernel we wrote
            OCL_CHECK(err, krnl_dot_prod = cl::Kernel(program, "dot_prod", &err));
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
              cl::Buffer buffer_vec_b(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                    block_to_accel_bytes,
                                    vector_b.data(),
                                    &err));
    OCL_CHECK(err,
              cl::Buffer buffer_hw_results(context,
                                       CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                       block_from_accel_bytes,
                                       hw_results.data(),
                                       &err));


    //TODO (7): Set the arguments 
    OCL_CHECK(err, err = krnl_dot_prod.setArg(0, buffer_vec_a));
    OCL_CHECK(err, err = krnl_dot_prod.setArg(1, buffer_vec_b));
    OCL_CHECK(err, err = krnl_dot_prod.setArg(2, buffer_hw_results));
    OCL_CHECK(err, err = krnl_dot_prod.setArg(3, VECTOR_SIZE));

    // Copy input data to device global memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_vec_a, buffer_vec_b},
                                               0 /* 0 means from host*/));

    // Launch the Kernel
    // For HLS kernels global and local size is always (1,1,1). So, it is recommended
    // to always use enqueueTask() for invoking HLS kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_dot_prod));

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_hw_results},
                                               CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();
    // OPENCL HOST CODE AREA END

    // Compare the results of the Device to the simulation
    bool match = true;
    for (int b = 0; b < BATCH_SIZE; b++){
        if (hw_results[b] != sw_results[b]) {
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << hw_results[b] << " != " << sw_results[b] << std::endl;
            match = false;
        } else {
        std::cout << hw_results[b] << " == " << sw_results[b] << std::endl;
        }
    }
    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl;
    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}
