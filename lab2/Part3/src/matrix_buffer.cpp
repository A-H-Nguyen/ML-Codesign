#include <ostream>
#include <stdint.h>
#include <iostream>
#include "mat_mul.hpp"
#include <cstdlib>

int main() {
  // create some arbitrary matrices
  int8_t block_a[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_A];
  int8_t block_b[BLOCK_DIM_ROW_B][BLOCK_DIM_COL_B];
  int16_t mat_c[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_B];
  int16_t golden_c[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_B];

  std::cout << "Matrix A:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_A; j++) {
      //block_a[i][j] = int8_t(i + j + 1);
      block_a[i][j] = int8_t(rand());
      std::cout << int16_t(block_a[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "Matrix B:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_B; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_B; j++) {
      //block_b[i][j] = int8_t(i + j + 2);
      block_b[i][j] = int8_t(rand());
      std::cout << int16_t(block_b[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "-------------------------------------------------" << std::endl;

  // For a square matrix, it won't matter if we use row or col
  // However, for a rectangular matrix, we have to choose wisely
  int8_t buf_a[BUFFER_LEN] = {0};
  int8_t buf_b[BUFFER_LEN] = {0};

  // this is where the magic happens
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
    std::cout << "BUFFER A:\t";
    for (int j = 0; j < BUFFER_LEN; j++)
      if (i > (j - 1) && i < (BUFFER_LEN + j))
        std::cout << int16_t(buf_a[j]) << "\t";
      else
        std::cout << "0\t";
    std::cout << std::endl;

    std::cout << "BUFFER B:\t";
    for (int j = 0; j < BUFFER_LEN; j++)
      if (i > (j - 1) && i < (BUFFER_LEN + j))
        std::cout << int16_t(buf_b[j]) << "\t";
      else
        std::cout << "0\t";
    std::cout << std::endl;

    std::cout << std::endl << std::endl;

    mat_mul_mac(buf_a, buf_b, i);

  }

  std::cout << "Matrix A:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_A; j++) {
      //block_a[i][j] = int8_t(i + j + 1);
      //block_a[i][j] = int8_t(rand());
      std::cout << int16_t(block_a[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "Matrix B:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_B; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_B; j++) {
      //block_b[i][j] = int8_t(i + j + 2);
      //block_b[i][j] = int8_t(rand());
      std::cout << int16_t(block_b[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << std::endl;

  for (int8_t i = 0; i < BLOCK_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_B; j++) {
        golden_c[i][j] = 0;
    }
  }

  std::cout << "Golden Matrix C:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_B; j++) {
      //block_b[i][j] = int8_t(i + j + 2);
      //golden_c[i][j] = 0;
      for(int8_t k = 0; k < BLOCK_DIM_COL_A; k++){
        golden_c[i][j] += block_a[i][k] * block_b[k][j];
      }
      std::cout << int16_t(golden_c[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  return 0;
}
