#include "libspir_types.h"
#include "hls_stream.h"
#include "xcl_top_defines.h"
#include "ap_axi_sdata.h"
#define EXPORT_PIPE_SYMBOLS 1
#include "cpu_pipes.h"
#undef EXPORT_PIPE_SYMBOLS
#include "xcl_half.h"
#include <cstddef>
#include <vector>
#include <complex>
#include <pthread.h>
using namespace std;

extern "C" {

void dot_prod(size_t vec_a, size_t vec_b, size_t results, unsigned int vector_len);

static pthread_mutex_t __xlnx_cl_dot_prod_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_dot_prod(char **argv) {
  void **args = (void **)argv;
  size_t vec_a = *((size_t*)args[0+1]);
  size_t vec_b = *((size_t*)args[1+1]);
  size_t results = *((size_t*)args[2+1]);
  unsigned int vector_len = *((unsigned int*)args[3+1]);
 pthread_mutex_lock(&__xlnx_cl_dot_prod_mutex);
  dot_prod(vec_a, vec_b, results, vector_len);
  pthread_mutex_unlock(&__xlnx_cl_dot_prod_mutex);
}
}
