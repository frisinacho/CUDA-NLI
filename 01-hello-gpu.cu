#include <stdio.h>

void helloCPU()
{
  printf("Hello from the CPU.\n");
}

void helloGPU()
{
  printf("Hello also from the CPU.\n");
}

int main(void)
{

  helloCPU();

  helloGPU();
   
  return 0;
}
