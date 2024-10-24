#ifndef MAT_MUL_HPP
#define MAT_MUL_HPP

#include <stdint.h>
#include <iostream>

int16_t pe[16] = {0};
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

void mat_mul_mac(int8_t a_buf[4],     // Read-Only Vector 1
          int8_t b_buf[4],         // Read-Only Vector 2
          int cycle
) {

    for(int i = 0; i < 16; i++){
        int row = (i/4);
        int col = (i%4);
        int8_t a_val = 0;
        int8_t b_val = 0;

        if(row == 0){
            b_val = b_buf[col];
        } else {
            if((cycle%2) == 0){
                b_val = b_out_0[i-4];
            } else {
                b_val = b_out_1[i-4];
            }
            
        }

        if(col == 0){
            a_val = a_buf[row];
        }  else {
            if((cycle%2) == 0){
                a_val = a_out_0[i-1];
            } else {
                a_val = a_out_1[i-1];
            }
            
        }

        mac(a_val,b_val,i,cycle);
    }    
    
    std::cout << "cycle number : " << cycle << std::endl;
    for(int i = 0; i < 16; i++){
        std::cout << pe[i] << " ";
        if(((i+1) % 4) == 0){
            std::cout << std::endl;
        }
    }
}

#endif