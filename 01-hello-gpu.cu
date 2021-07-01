#include <stdio.h>

void helloCPU()
{
  printf("Hello from the CPU.\n");
}

__global__ void helloGPU()
{
  printf("Hello from the GPU.\n");
}

int main(void)
{

  helloCPU();

  helloGPU<<<1, 1>>>();
   
  cudaDeviceSynchronize();
   
  return 0;
}
