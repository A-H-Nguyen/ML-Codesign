#include <cstdint>
#include <ostream>
#include <stdint.h>
#include <iostream>
#include "mat_mul_pe.hpp"
#include "mat_mul_hls.hpp"
#include <cstdlib>

//TODO (1): Set block size
#define BLOCK_SIZE 1024
#define MAX_MAT_SIZE 256

//Identifiers for Design 2a
const unsigned int VEC_LEN = 128;
//TRIPCOUNT identifier
const unsigned int v_len = VEC_LEN;

extern "C" {

void mat_mul_hls(const int8_t* input_a,                 // Read-Only Vector 1
              const int8_t* input_b,                 // Read-Only Vector 2
              int16_t* output_c,                     // Output Result
              int8_t* rows_a,
              int8_t* rows_b,
              int8_t* cols_a,
              int8_t* cols_b ) { //Vector size

//TODO (2): Determine the correct depth
#pragma HLS INTERFACE m_axi port = input_a offset = slave depth = 65536 bundle = gmem
#pragma HLS INTERFACE m_axi port = input_b offset = slave depth = 65536 bundle = gmem
#pragma HLS INTERFACE m_axi port = output_c offset = slave depth = 65536 bundle = gmem
#pragma HLS INTERFACE m_axi port = rows_a offset = slave depth = 1 bundle = gmem
#pragma HLS INTERFACE m_axi port = rows_b offset = slave depth = 1 bundle = gmem
#pragma HLS INTERFACE m_axi port = cols_a offset = slave depth = 1 bundle = gmem
#pragma HLS INTERFACE m_axi port = cols_b offset = slave depth = 1 bundle = gmem

#pragma HLS INTERFACE s_axilite port = input_a bundle = control
#pragma HLS INTERFACE s_axilite port = input_b bundle = control
#pragma HLS INTERFACE s_axilite port = output_c bundle = control
#pragma HLS INTERFACE s_axilite port = rows_a bundle = control
#pragma HLS INTERFACE s_axilite port = rows_b bundle = control
#pragma HLS INTERFACE s_axilite port = cols_a bundle = control
#pragma HLS INTERFACE s_axilite port = cols_b bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

  int8_t block_a[4][256];   // Local SRAM to store vector A
  int8_t block_b[256][4];   // Local SRAM to store vector B
  int16_t block_c[4][4]; // Local Register to store result
  int8_t ROWS_A = rows_a[0];
  int8_t ROWS_B = rows_b[0];
  int8_t COLS_A = cols_a[0];
  int8_t COLS_B = cols_b[0];

  // Blocking of Matrix A and B, assuming that they have a row dim and col dim
  // divisible by our buffer length, which is 4 in this case
  for (int a_blk = 0; 
       a_blk < ROWS_A / 4; a_blk++) {
    for (int row = 0; row < 4; row++) {
      for (int col = 0; col < COLS_A; col++) {
        block_a[row][col] = input_a[(row + (a_blk * 4))*COLS_A + col];
      }
    }

    for (int b_blk = 0;
         b_blk < COLS_B / 4; b_blk++) {
      for (int row = 0; row < ROWS_B; row++) {
        for (int col = 0; col < 4; col++) {
          block_b[row][col] = input_b[(row)*COLS_B + col + (b_blk * 4)];
        }
      }

      for (int i = 0; i < 16; i++) pe[i] = 0;
      
      int8_t buf_a[BUFFER_LEN] = {0};
      int8_t buf_b[BUFFER_LEN] = {0};
      
      int num_cycles = COLS_A + (ROWS_A - 1) + 3;

      for(int i = 0; i < num_cycles; i++) {
        for (int j = 0; j < BUFFER_LEN; j++) {
          if (i > (j - 1) && i < (COLS_A + j)) {
            buf_a[j] = block_a[j][i-j];
            buf_b[j] = block_b[i-j][j];
          }
          else {
           buf_a[j] = 0;
           buf_b[j] = 0;
          }
        }

        mat_mul_mac(buf_a, buf_b, i);
      } 

      for (int reg_num = 0; reg_num < 16; reg_num++)
        block_c[reg_num/4][reg_num%4] = pe[reg_num];

      for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
          output_c[(i + (a_blk * ROWS_A))*COLS_B + j + (b_blk * COLS_B)] = block_c[i][j];
        }
      }
    }
  }


}

}
