#include <cstdint>
#include <iostream>
#include <stdlib.h>

#define X 8
#define Y 8
#define C 3
#define STRIDE 2

// #include "im2row.hpp"

// inline int max(int *comp, int num_comps) {
//   int max_val = 0;
//   for (int i = 0; i < num_comps; i++) {
//     if (comp[i] > max_val)
//       max_val = comp[i];
//   }
//   return max_val;
// }

void maxpool2D(unsigned int input_cols, unsigned int input_rows, unsigned int channels,
               unsigned int in_len, unsigned int out_len,
               uint8_t *input, uint8_t *output, unsigned int stride) {
                
  uint8_t start = 0;
  uint8_t pool_number = 0;

  // for(int i = 0; i < input_rows; i++) {
  for(int i = 0; i < input_rows; i += stride) {
        // for (int j = 0; j < input_cols; j++) {
        for (int j = 0; j < input_cols; j += stride) {
            for (int k = 0; k < channels; k++) {
                start = i*(input_cols) + j + k*input_rows*input_cols;
                // per patch
                uint8_t max = 0;
                for(int l = 0; l < stride; l++) {
                    for (int m = 0; m < stride; m++) {
                       if(input[start + l*input_cols + m] > max){
                        max = input[start + l*input_cols + m];
                       }
                    }
                }
                //place into output buffer 
                output[pool_number] = max;
                pool_number++;
            }
        }
    }
}

int main(int argc, char **argv) {
  // if (argc != 5)
  //   return -1;

  // int X = atoi(argv[0]);
  // int Y = atoi(argv[1]);
  // int C = atoi(argv[2]);
  // int STRIDE = atoi(argv[3]);


  int input_len = X * Y * C;

  int output_len = (X / STRIDE) * (Y / STRIDE) * C;

  int num_patches = (X*Y) / (STRIDE*STRIDE);
  
  uint8_t *m_in  = new uint8_t[input_len];
  uint8_t *m_out = new uint8_t[output_len];
  
  std::cout << "Input matrix:" << std::endl;
  for (int i = 0; i < input_len; i++) {
    m_in[i] = i;
    std::cout << i << " ";
  }
  std::cout << std::endl;
  std::cout << std::endl;
  
  for (int i = 0; i < output_len; i++) {
    m_out[i] = 0;
  }

  // Print out the inital matrix as patches
  int start = 0;
  for(int i = 0; i < X; i += STRIDE) {
    for (int j = 0; j < Y; j += STRIDE) {
      for (int k = 0; k < C; k++) {
        start = (i * Y) + j + (k * X * Y);
        std::cout << "Patch Start index: " << start << std::endl;
        std::cout << "Patch contents: " << std::endl;
        // per patch
        for(int l = 0; l < STRIDE; l++) {
          for (int m = 0; m < STRIDE; m++) {
            // std::cout << "Curr index: " << start + l*Y + m << " ";
            std::cout << uint16_t(m_in[start + l*Y + m]) << " ";
          }
          std::cout << std::endl;
        }
        std::cout << std::endl;
      }
    }
  }
  std::cout << std::endl;

  // maxpool2D(X, Y, len, len, m_in, m_out);
// void maxpool2D(unsigned int input_cols, unsigned int input_rows, unsigned int channels,
//                unsigned int in_len, unsigned int out_len,
//                uint8_t *input, uint8_t *output, unsigned int stride)

  maxpool2D(Y, X, C, input_len, output_len, m_in, m_out, STRIDE);

  std::cout << "Output matrix:" << std::endl;
  for (int i = 0; i < output_len; i++) {
    // if (i % (Y / STRIDE) == 0)
    //   std::cout << std::endl;
    std::cout << uint16_t(m_out[i]) << " ";
  }
  std::cout << std::endl << std::endl;

  return 0;
}
