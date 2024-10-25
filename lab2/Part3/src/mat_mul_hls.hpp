#ifndef _MAT_MUL_HLS_H_
#define _MAT_MUL_HLS_H_

#include <stdint.h>
//
extern "C" {
void mat_mul_hls(const int8_t* input_a,                 // Read-Only Vector 1
              const int8_t* input_b,                 // Read-Only Vector 2
              int16_t* output_c,                     // Output Result
              int8_t rows_a,
              int8_t rows_b,
              int8_t cols_a,
              int8_t cols_b );
}

#endif  //_MAT_MUL_HLS_H_