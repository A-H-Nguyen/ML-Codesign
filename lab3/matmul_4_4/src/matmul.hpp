#ifndef _MATMUL_H_
#define _MATMUL_H_
#include <stdint.h>
// #include <ap_int.h>
#include <iostream>

extern "C"{
void matmul(
    uint8_t* out,
    const uint32_t M0,
    const uint32_t n,
    const uint8_t* a,
    const uint8_t* b,
    const uint8_t zero_a,
    const uint8_t zero_b,
    const uint8_t zero_out,
    uint32_t u,
    uint32_t v,
    uint32_t w
);

}
#endif  //
