// need to add a header eventually
#include <stdint.h>
#include <iostream>

#define BLOCK_DIM_ROW_A   4
#define BLOCK_DIM_ROW_B   4 
#define BLOCK_DIM_COL_A   4
#define BLOCK_DIM_COL_B   4 

extern "C" {

int16_t pe[16] = {0};
int8_t a_out[16] = {0};
int8_t b_out[16] = {0};
int8_t a_in[4] = {0};
int8_t b_in[4] = {0};
uint64_t cycle = 0;

void mac(int a, int b, int i) {
    pe[i] += a*b;
    if(((i+1) % 4) != 0){
        a_out[i+1] = a;
    }
    if((i+4) < 16){
        b_out[i+4] = b;
    }
}

void mat_mul_mac(int8_t a_buf[4],     // Read-Only Vector 1
          int8_t b_buf[4]         // Read-Only Vector 2
) {

    for(int i = 0; i < 16; i++){
        int row = (i/4);
        int col = (i%4);
        int a_val = 0;
        int b_val = 0;

        if(row == 0){
            b_val = b_buf[col];
        } else {
            b_val = b_out[(row-1)*4 + col];
        }

        if(col == 0){
            a_val = a_buf[row];
        }  else {
            a_val = a_out[(row) + (col-1)];
        }

        mac(a_val,b_val,i);
    }    
    
    std::cout << "cycle number : " << cycle << std::endl;
    for(int i = 0; i < 16; i++){
        std::cout << pe[i] << " ";
        if(((i+1) % 4) == 0){
            std::cout << std::endl;
        }
    }
}

}

// void mat_mul(int8_t a[4][4],     // Read-Only Vector 1
//           int8_t b[4][4],         // Read-Only Vector 2
//           int16_t c [4][4]            // Output Result
// ) {

// for(int8_t i = 0; i < BLOCK_DIM_ROW_A; i++){
//     for(int8_t j = 0; j < BLOCK_DIM_COL_B; j++){

//         for(int8_t k = 0; k < BLOCK_DIM_COL_A; k++){
//             c[i][j] += a[i][k] * b[k][j];
//         }        
//     }
// }
    
//}

//}

int main(void){
    int8_t mat_a[4][4];
    int8_t mat_b[4][4];
    int16_t mat_c[4][4];

    //initializer (to all 1s)
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            mat_a[i][j] = 1;
            mat_b[i][j] = 1;
            mat_c[i][j] = 0;
        }
    }

    //printer
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            std::cout << mat_a[i][j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;

    //printer
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            std::cout << mat_b[i][j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;

    //mat_mul(mat_a, mat_b, mat_c);

    //printer
    // for(int i = 0; i < 4; i++){
    //     for(int j = 0; j < 4; j++){
    //         std::cout << mat_c[i][j] << " ";
    //     }
    //     std::cout << std::endl;
    // }
    // std::cout << std::endl;

    //new function info

    //load buffers for a
    int a_buf[4] = {0};

    for(int i = 0; i < 4; i++){
        for(int j = 0; j < 4; j++){
            switch(j){
            case 0 : 
            case 1 : 
            case 2 : 
            case 3 : 
            default : 
            }
        }
    }

    //load buffers for b
    int b_buf[4] = {0};

    return 0;  

} 
