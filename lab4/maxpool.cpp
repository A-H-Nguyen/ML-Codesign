#include <iostream>
#include <ostream>
#include <stdlib.h>

#define X 8
#define Y 8
#define STRIDE 2

inline int max(int *comp, int num_comps) {
  int max_val = 0;
  for (int i = 0; i < num_comps; i++) {
    if (comp[i] > max_val)
      max_val = comp[i];
  }
  return max_val;
}

void maxpool2D(unsigned int x_dim, unsigned int y_dim, 
               unsigned int in_len, unsigned int out_len,
               int *input, int *output) {
  // since we cannot do dynamic mem alloc in HLS, we should manually create 
  // this vector. If we have a stride of 2, we will always be creating 2x2
  // "pools". So each pool dim is really STRIDExSTRIDE
  int comp[4]; 

  // silly hack incoming
  int pool_num = 0;

  for (unsigned int i = 0; i < in_len; i += STRIDE) {
    if ((i / y_dim) % 2 != 0)
      continue;
    
    comp[0] = input[i];
    comp[1] = input[i+1];
    comp[2] = input[i+X];
    comp[3] = input[i+1+X];

    output[pool_num] = max(comp, 4);

    // SIlly hack cont. This should really be its own loop.
    if (pool_num < out_len)
      pool_num++;
  }
}

int main() {
  int input_len = X * Y;

  // This might be totally wrong
  int output_len = (X / STRIDE) * (Y / STRIDE);
  
  int *m_in = new int[input_len];
  int *m_out = new int[output_len];

  std::cout << "Input matrix:" << std::endl;
  for (int i = 0; i < input_len; i++) {
    m_in[i] = i;
    if (i % Y == 0)
      std::cout << std::endl;
    std::cout << m_in[i] << "\t";
  }
  std::cout << std::endl << std::endl;

  maxpool2D(X, Y, input_len, output_len, m_in, m_out);

  std::cout << "Output matrix:" << std::endl;
  for (int i = 0; i < output_len; i++) {
    m_in[i] = i;
    if (i % (Y / STRIDE) == 0)
      std::cout << std::endl;
    std::cout << m_out[i] << "\t";
  }
  std::cout << std::endl << std::endl;

  return 0;
}
