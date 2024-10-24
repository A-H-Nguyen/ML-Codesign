#include "mat_mul.hpp"
#include <stdint.h>


// extern "C" {

void matrix_multiply(const int **mat_a, const int **mat_b, int **mat_c,
                     int row_a, int col_a, int row_b, int col_b) {
//TODO (2): Determine the correct depth
// #pragma HLS INTERFACE m_axi port = mat_a offset = slave depth=row_a*col_a bundle = gmem
// #pragma HLS INTERFACE m_axi port = mat_b offset = slave depth=row_b*col_b bundle = gmem
// #pragma HLS INTERFACE m_axi port = mat_c offset = slave depth=row_a*col_b bundle = gmem

// #pragma HLS INTERFACE s_axilite port = mat_a bundle = control
// #pragma HLS INTERFACE s_axilite port = mat_b bundle = control
// #pragma HLS INTERFACE s_axilite port = row_a bundle = control
// #pragma HLS INTERFACE s_axilite port = row_b bundle = control
// #pragma HLS INTERFACE s_axilite port = col_a bundle = control
// #pragma HLS INTERFACE s_axilite port = col_b bundle = control
// #pragma HLS INTERFACE s_axilite port = mat_c bundle = control
// #pragma HLS INTERFACE s_axilite port = return bundle = control

  int8_t block_a[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_A];
  int8_t block_b[BLOCK_DIM_ROW_B][BLOCK_DIM_COL_B];
  // int16_t mat_c[BLOCK_DIM_ROW_A][BLOCK_DIM_COL_B];
  
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

    mat_mul_mac(buf_a, buf_b, i);
  }
}

// }
