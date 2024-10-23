#include "dot_prod.hpp"
#include <stdint.h>

//TODO (1): Set block size
#define BLOCK_SIZE 1024


//TRIPCOUNT identifier
const unsigned int v_len = 1024;

extern "C" {
void dot_prod(const int *mat_a,     // Read-Only Vector 1
          const int *mat_b,         // Read-Only Vector 2
          const int row_a,
          const int row_b,
          const int col_a,
          const int col_b,
          int *mat_c,             // Output Result
          const unsigned int vector_len //Vector size
) {

//TODO (2): Determine the correct depth
#pragma HLS INTERFACE m_axi port = mat_a offset = slave depth=row_a*col_a bundle = gmem
#pragma HLS INTERFACE m_axi port = mat_b offset = slave depth=row_b*col_b bundle = gmem
#pragma HLS INTERFACE m_axi port = mat_c offset = slave depth=row_a*col_b bundle = gmem

#pragma HLS INTERFACE s_axilite port = mat_a bundle = control
#pragma HLS INTERFACE s_axilite port = mat_b bundle = control
#pragma HLS INTERFACE s_axilite port = row_a bundle = control
#pragma HLS INTERFACE s_axilite port = row_b bundle = control
#pragma HLS INTERFACE s_axilite port = col_a bundle = control
#pragma HLS INTERFACE s_axilite port = col_b bundle = control
#pragma HLS INTERFACE s_axilite port = mat_c bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    unsigned int mat_a_buf[1024];   // Local SRAM to store vector A
    unsigned int mat_b_buf[1024];   // Local SRAM to store vector B
    unsigned int mat_c_buf[1024];          // Local Register to store result
    unsigned int final_buf[64];

    unsigned int sub_mat_a[16];
    unsigned int sub_mat_b[16];

    for(int i=0; i < 64; i++){
        final_buf[i] = 0;
    }

    unsigned int a_sub_mats = (row_a * col_a)/16;
    unsigned int b_sub_mats = (row_b * col_b)/16;

    unsigned int k = 0; //cur row a
    unsigned int l = 0; //cur col a
    unsigned int m = 0; //cur row b
    unsigned int n = 0; //cur col b

    for(k = 0; k < row_a; k += 4){
        //TODO (3): Load the buffers
        for(int i = 0; i < col_a*4; i++){
            mat_a_buf[i] = mat_a[i];
        }
        for(n = 0; n < col_b; n += 4){
            unsigned int a_start = k*(col_a)*4;
            unsigned int b_start = n;
            load:
                for(int i = 0; i < row_b; i++){
                    for(int j = 0; j < 4; j++){
                        mat_b_buf[(i*4)+(j)] = mat_b[(col_b*i)+(b_start+j)]
                    }
                }

            compute:
                //TODO (4) do the dot product!
                // do muls
                for(int i = 0; i < col_a/4; i++){
                    for(int j = 0; j < row_b/4; j++){
                        
                        for(int g = 0; g < 4; g++){
                            for(int h = 0; h < 4; h++){
                                sub_mat_a[(g*4)+h] = mat_a_buf[(i*4) + h + (g*col_a)];
                            }
                        }    


                        for(int h = 0; h < 16; h++){
                            sub_mat_b[h] = mat_b_buf[(j*16) + h];
                        }

                        //can split into 16 muls here (rotate and do 3 more times)
                        //loop unroll so 16 at same time
                        for(int g = 0; g < 16; g++){
                            mat_c_buf[(j*16) + g] = sub_mat_a[g] * sub_mat_b[g];
                        }
                    }
                }

                // adds
                for(int g = 0; g < 16; g++){
                    final_buf[g] = mat_c_buf[g] + mat_c_buf[16+g] + mat_c_buf[32+g] + mat_c_buf[48+g];
                }

            store:
            //TODO (5): write vout_buffer back to results
            for(int h = 0; h < 4; h++){
                for(int g = 0; g < 4; g++){
                    mat_c[k*(col_b*4)+(n*4)+(h*col_b)+g] = final_buf[(h*4)+g]
                }
            }
        }
    }
}
}