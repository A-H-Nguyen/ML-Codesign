#include "dot_prod.hpp"
#include "stdio.h"

//TODO (1): Set block size
#define BLOCK_SIZE 16

//Identifiers for Design 2a
const unsigned int VEC_LEN = 128;
//TRIPCOUNT identifier
const unsigned int v_len = VEC_LEN;

extern "C" {


// void read_vec(unsigned int *va_buffer, unsigned int *vb_buffer, 
//              const int *vec_a, const int *vec_b, int counter) {
//     #pragma HLS UNROLL factor=4
//     for(int i = 0; i < BLOCK_SIZE; i++) {
//         if (counter * BLOCK_SIZE + i >= VEC_LEN) {
//             va_buffer[i] = 0;
//             vb_buffer[i] = 0;
//         }
//         else {
//             va_buffer[i] = vec_a[counter * BLOCK_SIZE + i];
//             vb_buffer[i] = vec_b[counter * BLOCK_SIZE + i];
//         }
//     }
// }
// 
// void vec_mul(unsigned int *va_buffer, unsigned int *vb_buffer, 
//              unsigned int *vout_buffer) {
//     for(int i = 0; i < BLOCK_SIZE; i++) {
//         vout_buffer[i] = va_buffer[i] * vb_buffer[i];
//     }
// }

void dot_prod(const int *vec_a,                 // Read-Only Vector 1
              const int *vec_b,                 // Read-Only Vector 2
              int *results,                     // Output Result
              const unsigned int vector_len ) { //Vector size
//TODO (2): Determine the correct depth
#pragma HLS INTERFACE m_axi port = vec_a offset = slave depth = 128 bundle = gmem
#pragma HLS INTERFACE m_axi port = vec_b offset = slave depth = 128 bundle = gmem
#pragma HLS INTERFACE m_axi port = results offset = slave depth = 1 bundle = gmem

#pragma HLS INTERFACE s_axilite port = vec_a bundle = control
#pragma HLS INTERFACE s_axilite port = vec_b bundle = control
#pragma HLS INTERFACE s_axilite port = results bundle = control
#pragma HLS INTERFACE s_axilite port = vector_len bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    unsigned int va_buffer[BLOCK_SIZE];   // Local SRAM to store vector A
    unsigned int vb_buffer[BLOCK_SIZE];   // Local SRAM to store vector B
    unsigned int vout_buffer[BLOCK_SIZE]; // Local Register to store result
    
    #pragma HLS ARRAY_PARTITION variable=va_buffer   block factor=4
    #pragma HLS ARRAY_PARTITION variable=vb_buffer   block factor=4
    #pragma HLS ARRAY_PARTITION variable=vout_buffer block factor=4

    const unsigned int NUM_BLOCK = (VEC_LEN + BLOCK_SIZE - 1) / BLOCK_SIZE;

    results[0] = 0;

    for(int counter = 0; counter < NUM_BLOCK; counter++) {
        // read_vec(va_buffer, vb_buffer, vec_a, vec_b, counter);
        // vec_mul(va_buffer, vb_buffer, vout_buffer);

        for(int i = 0; i < BLOCK_SIZE; i++) {
        // unroll_factor is either 4 or 16
        #pragma HLS UNROLL factor=16
            if (counter * BLOCK_SIZE + i >= VEC_LEN) {
                va_buffer[i] = 0;
                vb_buffer[i] = 0;
            }
            else {
                va_buffer[i] = vec_a[counter * BLOCK_SIZE + i];
                vb_buffer[i] = vec_b[counter * BLOCK_SIZE + i];
            }
            vout_buffer[i] = va_buffer[i] * vb_buffer[i];
        }

	for(int i = 0; i < BLOCK_SIZE; i++) {
             results[0] += vout_buffer[i];
        }
    }
}

}
