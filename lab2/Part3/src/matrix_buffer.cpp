#include <ostream>
#include <stdint.h>
#include <iostream>

// In order for this scheme to work, blocks A and B must share some common dim
// However, this is fine as in the case of arbitrary matrix multiplication, we
// must have matrices A and B of dimensions NxM and MxP such that A and B share
// M as a common dimension
#define BLOCK_DIM_ROW_A   4
#define BLOCK_DIM_ROW_B   4 
#define BLOCK_DIM_COL_A   4
#define BLOCK_DIM_COL_B   4 
#define COMMON_DIM        4 

int main() {
  // create some arbitrary matrices
  int mat_a[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_A];
  int mat_b[BLOCK_DIM_ROW_B][BLOCK_DIM_COL_B];

  std::cout << "Matrix A:" << std::endl;
  for (int i = 0; i < BLOCK_DIM_ROW_A; i++) {
    for (int j = 0; j < BLOCK_DIM_COL_A; j++) {
      mat_a[i][j] = i + j + 1;
      std::cout << mat_a[i][j] << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "Matrix B:" << std::endl;
  for (int i = 0; i < BLOCK_DIM_ROW_B; i++) {
    for (int j = 0; j < BLOCK_DIM_COL_B; j++) {
      mat_b[i][j] = i + j + 2;
      std::cout << mat_b[i][j] << " ";
    } std::cout << std::endl;
  }   std::cout << std::endl;

  std::cout << "-------------------------------------------------" << std::endl;

  // For a square matrix, it won't matter if we use row or col
  // However, for a rectangular matrix, we have to choose wisely
  int buf_a[COMMON_DIM] = {0};
  int buf_b[COMMON_DIM] = {0};

  // this is where the magic happens
  for(int i = 0; i < (COMMON_DIM * 2) - 1; i++) {
    for (int j = 0; j < COMMON_DIM; j++) {
      if (i > (j - 1) && i < (COMMON_DIM + j)) {
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
        std::cout << "a[" << j << "][" << i-j << "] = " << buf_a[j] << "\t";
      else
        std::cout << "buf = 0\t";
    std::cout << std::endl;

    std::cout << "BUFFER B:\t";
    for (int j = 0; j < COMMON_DIM; j++)
      if (i > (j - 1) && i < (COMMON_DIM + j))
        std::cout << "b[" << i-j << "][" << j << "] = " << buf_b[j] << "\t";
      else
        std::cout << "buf = 0\t";
    std::cout << std::endl;

    std::cout << std::endl << std::endl;
  }

  return 0;
}
