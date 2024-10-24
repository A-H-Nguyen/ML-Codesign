#include <cstdint>
#include <ostream>
#include <stdint.h>
#include <iostream>
#include "mat_mul.hpp"
#include <cstdlib>

#define INPUT_DIM_ROW_A 32
#define INPUT_DIM_COL_A 16
#define INPUT_DIM_ROW_B 16
#define INPUT_DIM_COL_B 32

int main() {
  // create some arbitrary matrices
  int8_t   input_a[INPUT_DIM_ROW_A][INPUT_DIM_COL_A];
  int8_t   input_b[INPUT_DIM_ROW_B][INPUT_DIM_COL_B];
  int8_t   block_a[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_A];
  int8_t   block_b[BLOCK_DIM_ROW_B][BLOCK_DIM_COL_B];
  int16_t  block_c[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_B];
  int16_t output_c[INPUT_DIM_ROW_A][INPUT_DIM_COL_B];
  int16_t golden_c[INPUT_DIM_ROW_A][INPUT_DIM_COL_B];
  
  int8_t n = 0;  // generate random numbers in range [n,m]
  int8_t m = 10;

  for (int8_t i = 0; i < INPUT_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < INPUT_DIM_COL_A; j++) {
      input_a[i][j] = int8_t(n + rand() % (m - n + 1));
    }
  }

  for (int8_t i = 0; i < INPUT_DIM_ROW_B; i++) {
    for (int8_t j = 0; j < INPUT_DIM_COL_B; j++) {
      input_b[i][j] = int8_t(n + rand() % (m - n + 1));
    }
  }

  // Blocking of Matrix A and B, assuming that they have a row dim and col dim
  // divisible by our buffer length, which is 4 in this case
  for (int a_blk = 0; 
       a_blk < INPUT_DIM_ROW_A / BLOCK_DIM_ROW_A; a_blk++) {
    for (int row = 0; row < BLOCK_DIM_ROW_A; row++) {
      for (int col = 0; col < BLOCK_DIM_COL_A; col++) {
        block_a[row][col] = input_a[row + (a_blk * BLOCK_DIM_ROW_A)][col];
      }
    }

    for (int b_blk = 0;
         b_blk < INPUT_DIM_COL_B / BLOCK_DIM_COL_B; b_blk++) {
      for (int row = 0; row < BLOCK_DIM_ROW_B; row++) {
        for (int col = 0; col < BLOCK_DIM_COL_B; col++) {
          block_b[row][col] = input_b[row][col + (b_blk * BLOCK_DIM_COL_B)];
        }
      }

      // std::cout << "Block A" << a_blk << ":" << std::endl;
      // for (int row = 0; row < BLOCK_DIM_ROW_A; row++) {
      //   for (int col = 0; col < BLOCK_DIM_COL_A; col++) {
      //     std::cout << int16_t(input_a[row + (a_blk * BLOCK_DIM_ROW_A)][col]) 
      //               << "\t";
      //   } std::cout << std::endl;
      // }   std::cout << std::endl;
      // 
      // std::cout << "Block B" << b_blk << ":" << std::endl;
      // for (int row = 0; row < BLOCK_DIM_ROW_B; row++) {
      //   for (int col = 0; col < BLOCK_DIM_COL_B; col++) {
      //     std::cout << int16_t(input_b[row][col + (b_blk * BLOCK_DIM_COL_B)]) 
      //               << "\t";
      //   } std::cout << std::endl;
      // }   std::cout << std::endl;

      // std::cout << "Initialize PE regs" << std::endl;
      for (int i = 0; i < 16; i++) pe[i] = 0;
      
      int8_t buf_a[BUFFER_LEN] = {0};
      int8_t buf_b[BUFFER_LEN] = {0};
      
      int num_cycles = BLOCK_DIM_COL_A + (BLOCK_DIM_ROW_A - 1) + 3;

      for(int i = 0; i < num_cycles; i++) {
        for (int j = 0; j < BUFFER_LEN; j++) {
          if (i > (j - 1) && i < (BLOCK_DIM_COL_A + j)) {
            buf_a[j] = block_a[j][i-j];
            buf_b[j] = block_b[i-j][j];
          }
          else {
           buf_a[j] = 0;
           buf_b[j] = 0;
          }
        }

        // Print buffers every iteration
        // std::cout << "BUFFER A:\t";
        // for (int j = 0; j < BUFFER_LEN; j++)
        //   if (i > (j - 1) && i < (BUFFER_LEN + j))
        //     std::cout << int16_t(buf_a[j]) << "\t";
        //   else
        //     std::cout << "0\t";
        // std::cout << std::endl;

        // std::cout << "BUFFER B:\t";
        // for (int j = 0; j < BUFFER_LEN; j++)
        //   if (i > (j - 1) && i < (BUFFER_LEN + j))
        //     std::cout << int16_t(buf_b[j]) << "\t";
        //   else
        //     std::cout << "0\t";
        // std::cout << std::endl;

        mat_mul_mac(buf_a, buf_b, i);
      } 

      for (int reg_num = 0; reg_num < 16; reg_num++)
        block_c[reg_num/4][reg_num%4] = pe[reg_num];

      // std::cout << "Block C:" << std::endl;
      // for (int i = 0; i < 4; i++) {
      //   for (int j = 0; j < 4; j++) {
      //     std::cout << block_c[i][j] << "\t";
      //   } std::cout << std::endl;
      // }   std::cout << std::endl;

      for (int i = 0; i < BLOCK_DIM_ROW_A; i++) {
        for (int j = 0; j < BLOCK_DIM_COL_B; j++) {
          output_c[i + (a_blk * BLOCK_DIM_ROW_A)]
                  [j + (b_blk * BLOCK_DIM_COL_B)] = block_c[i][j];
        }
      }
      // std::cout << "-------------------------------------------------" 
      //           << std::endl << std::endl;
    }
  }

  std::cout << "Matrix A:" << std::endl;
  for (int8_t i = 0; i < INPUT_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < INPUT_DIM_COL_A; j++) {
      std::cout << int16_t(input_a[i][j]) << "\t";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "Matrix B:" << std::endl;
  for (int8_t i = 0; i < INPUT_DIM_ROW_B; i++) {
    for (int8_t j = 0; j < INPUT_DIM_COL_B; j++) {
      std::cout << int16_t(input_b[i][j]) << "\t";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "-------------------------------------------------" 
            << std::endl << std::endl;

  for (int8_t i = 0; i < INPUT_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < INPUT_DIM_COL_B; j++) {
        golden_c[i][j] = 0;
    }
  }

  std::cout << "Golden Output:" << std::endl;
  int num_diffs = 0;
  for (int8_t i = 0; i < INPUT_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < INPUT_DIM_COL_B; j++) {
      for(int8_t k = 0; k < INPUT_DIM_COL_A; k++){
        golden_c[i][j] += input_a[i][k] * input_b[k][j];
      }
      std::cout << int16_t(golden_c[i][j]) << "\t";
      if (golden_c[i][j] != output_c[i][j]) num_diffs++;
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "Device Ouput:" << std::endl;
  for (int8_t i = 0; i < INPUT_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < INPUT_DIM_COL_B; j++) {
      std::cout << int16_t(output_c[i][j]) << "\t";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << num_diffs << " Differences between Golden and Device" 
            << std::endl;

  return 0;
}
