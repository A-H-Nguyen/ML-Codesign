#ifndef _IM2COLW_H_
#define _IM2COLW_H_
#include <stdint.h>
// #include <ap_int.h>
#include <iostream>

extern "C"{
void im2colW(
    const uint8_t *in, 
    uint8_t *out,      
    uint32_t src_m,
    uint32_t src_n,
    uint32_t src_c,
    uint32_t kernel_size_m,
    uint32_t kernel_size_n
);
}
#endif  //_IM2COLW_H_