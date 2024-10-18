#ifndef _DOT_PROD_H_
#define _DOT_PROD_H_

//
extern "C" {
void dot_prod(const int *vec_a,  // Vector A
              const int *vec_b,  // Vector B
              int *results,      // Results
              const unsigned int vector_len     // Length of A,B
);
}

#endif  //_DOT_PROD_H_