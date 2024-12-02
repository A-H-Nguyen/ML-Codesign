void relu(int *input, int *output, unsigned int len) {
  for (unsigned int i = 0; i < len; i++)
    output[i] = (input[i] > 0) ? input[i] : 0;
}

