#include "dot_prod.hpp"
#include "stdio.h"

//TODO (1): Set block size
#define BLOCK_SIZE 16

//Identifiers for Design 2a
const unsigned int VEC_LEN = 1011;
//TRIPCOUNT identifier
const unsigned int v_len = VEC_LEN;

extern "C" {
void dot_prod(const int *vec_a,     // Read-Only Vector 1
          const int *vec_b,         // Read-Only Vector 2
          int *results,             // Output Result
          const unsigned int vector_len //Vector size
) {

//TODO (2): Determine the correct depth
#pragma HLS INTERFACE m_axi port = vec_a offset = slave depth = 1011 bundle = gmem
#pragma HLS INTERFACE m_axi port = vec_b offset = slave depth = 1011 bundle = gmem
#pragma HLS INTERFACE m_axi port = results offset = slave depth = 1 bundle = gmem

#pragma HLS INTERFACE s_axilite port = vec_a bundle = control
#pragma HLS INTERFACE s_axilite port = vec_b bundle = control
#pragma HLS INTERFACE s_axilite port = results bundle = control
#pragma HLS INTERFACE s_axilite port = vector_len bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    unsigned int va_buffer[BLOCK_SIZE];   // Local SRAM to store vector A
    unsigned int vb_buffer[BLOCK_SIZE];   // Local SRAM to store vector B
    unsigned int vout_buffer[BLOCK_SIZE]; // Local Register to store result

    const unsigned int NUM_BLOCK = (VEC_LEN + BLOCK_SIZE - 1) / BLOCK_SIZE;

    results[0] = 0;

    #pragma HLS PIPELINE off
    for(int counter = 0; counter < NUM_BLOCK; counter++) {
        for(int i = 0; i < BLOCK_SIZE; i++) {
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
        
        // compute: for(int i = 0; i < BLOCK_SIZE; i++) {
        //     // vout_buffer[0] += va_buffer[i] * vb_buffer[i];
        //     results[0] += va_buffer[i] * vb_buffer[i];
        // }
	for(int i = 0; i < BLOCK_SIZE; i++) {
             results[0] += vout_buffer[i];
        }
    }
}
}
