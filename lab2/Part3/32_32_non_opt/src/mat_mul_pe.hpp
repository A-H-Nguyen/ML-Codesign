#ifndef MAT_MUL_PE_HPP
#define MAT_MUL_PE_HPP

#include <stdint.h>
#include <iostream>

/*
#define BLOCK_DIM_ROW_A   4
#define BLOCK_DIM_COL_A   16
#define BLOCK_DIM_ROW_B   16 
#define BLOCK_DIM_COL_B   4 
*/
#define BUFFER_LEN        4 


int16_t pe[16];
int8_t a_out_0[16] = {0};
int8_t b_out_0[16] = {0};
int8_t a_out_1[16] = {0};
int8_t b_out_1[16] = {0};
int8_t a_in[4] = {0};
int8_t b_in[4] = {0};
uint64_t cycle = 0;

void mac(int8_t a, int8_t b, int i, int cycle) {
    pe[i] += a*b;
    if(((i+1) % 4) != 0){
        if((cycle%2) == 0){
            a_out_1[i] = a;
        } else {
            a_out_0[i] = a;
        }
        
    }
    if((i+4) < 16){
        if((cycle%2) == 0){
            b_out_1[i] = b;
        } else {
            b_out_0[i] = b;
        }
    }
}

void mat_mul_mac(int8_t a_buf[4], int8_t b_buf[4], int cycle) {
    //#pragma HLS pipeline II=1
    //#pragma HLS unroll factor=16
    //#pragma HLS ARRAY_PARTITION variable=pe complete dim=1
    //#pragma HLS ARRAY_PARTITION variable=a_in complete dim=1
    //#pragma HLS ARRAY_PARTITION variable=b_in complete dim=1
    //#pragma HLS ARRAY_PARTITION variable=a_out_0 complete dim=1
    //#pragma HLS ARRAY_PARTITION variable=a_out_1 complete dim=1
    //#pragma HLS ARRAY_PARTITION variable=b_out_0 complete dim=1
    //#pragma HLS ARRAY_PARTITION variable=b_out_1 complete dim=1
    for(int i = 0; i < 16; i++){
        int8_t a_val = 0;
        int8_t b_val = 0;

        if((i/4) == 0){
            b_val = b_buf[i%4];
        } else {
            if((cycle%2) == 0){
                b_val = b_out_0[i-4];
            } else {
                b_val = b_out_1[i-4];
            }
        }

        if((i%4) == 0){
            a_val = a_buf[i/4];
        }  else {
            if((cycle%2) == 0){
                a_val = a_out_0[i-1];
            } else {
                a_val = a_out_1[i-1];
            }
        }
        mac(a_val,b_val,i,cycle);
    }

    // std::cout << "cycle number : " << cycle << std::endl;
    // for(int i = 0; i < 16; i++){
    //     std::cout << pe[i] << " ";
    //     if(((i+1) % 4) == 0){
    //         std::cout << std::endl;
    //     }
    // }
}

void matrix_multiply(const int **mat_a, const int **mat_b, int **mat_c,
                     int row_a, int col_a, int row_b, int col_b);

#endif
