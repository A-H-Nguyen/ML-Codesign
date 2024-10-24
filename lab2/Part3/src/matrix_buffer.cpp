#include <ostream>
#include <stdint.h>
#include <iostream>
#include "mat_mul.hpp"
#include <cstdlib>

// In order for this scheme to work, blocks A and B must share some common dim
// However, this is fine as in the case of arbitrary matrix multiplication, we
// must have matrices A and B of dimensions NxM and MxP such that A and B share
// M as a common dimension
#define BLOCK_DIM_ROW_A   4
#define BLOCK_DIM_ROW_B   16 
#define BLOCK_DIM_COL_A   16
#define BLOCK_DIM_COL_B   4 
#define COMMON_DIM        4 

int main() {
  // create some arbitrary matrices
  int8_t mat_a[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_A];
  int8_t mat_b[BLOCK_DIM_ROW_B][BLOCK_DIM_COL_B];
  int16_t mat_c[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_B];
  int16_t golden_c[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_B];

  std::cout << "Matrix A:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_A; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_A; j++) {
      //mat_a[i][j] = int8_t(i + j + 1);
      mat_a[i][j] = int8_t(rand());
      std::cout << int16_t(mat_a[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "Matrix B:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_B; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_B; j++) {
      //mat_b[i][j] = int8_t(i + j + 2);
      mat_b[i][j] = int8_t(rand());
      std::cout << int16_t(mat_b[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "-------------------------------------------------" << std::endl;

  // For a square matrix, it won't matter if we use row or col
  // However, for a rectangular matrix, we have to choose wisely
  int8_t buf_a[COMMON_DIM] = {0};
  int8_t buf_b[COMMON_DIM] = {0};

  // this is where the magic happens
  int num_cycles = BLOCK_DIM_COL_A + (BLOCK_DIM_ROW_A - 1) + 3;
  for(int i = 0; i < num_cycles; i++) {
    for (int j = 0; j < COMMON_DIM; j++) {
      if (i > (j - 1) && i < (BLOCK_DIM_COL_A + j)) {
        buf_a[j] = mat_a[j][i-j];
        buf_b[j] = mat_b[i-j][j];
      }
      else {
       buf_a[j] = 0;
       buf_b[j] = 0;
      }
    }

    // Print buffers every iteration
    std::cout << "BUFFER A:\t";
    for (int j = 0; j < COMMON_DIM; j++)
      if (i > (j - 1) && i < (COMMON_DIM + j))
        std::cout << int16_t(buf_a[j]) << "\t";
      else
        std::cout << "0\t";
    std::cout << std::endl;

    std::cout << "BUFFER B:\t";
    for (int j = 0; j < COMMON_DIM; j++)
      if (i > (j - 1) && i < (COMMON_DIM + j))
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
      //mat_a[i][j] = int8_t(i + j + 1);
      //mat_a[i][j] = int8_t(rand());
      std::cout << int16_t(mat_a[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "Matrix B:" << std::endl;
  for (int8_t i = 0; i < BLOCK_DIM_ROW_B; i++) {
    for (int8_t j = 0; j < BLOCK_DIM_COL_B; j++) {
      //mat_b[i][j] = int8_t(i + j + 2);
      //mat_b[i][j] = int8_t(rand());
      std::cout << int16_t(mat_b[i][j]) << " ";
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
      //mat_b[i][j] = int8_t(i + j + 2);
      //golden_c[i][j] = 0;
      for(int8_t k = 0; k < BLOCK_DIM_COL_A; k++){
        golden_c[i][j] += mat_a[i][k] * mat_b[k][j];
      }
      std::cout << int16_t(golden_c[i][j]) << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  return 0;
}
