// hello-world.cu 
#include <stdio.h> 
__global__ void cuda_function()
{
   printf("Hello World from GPU!\n"); 
    __syncthreads();               // to synchronize all threads
}

int main()
{
    cuda_function<<<1,1>>>();
    cudaDeviceSynchronize();      // to synchronize device call
    return 0;
}