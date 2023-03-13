// Adapted from here: https://www.amazon.com/CUDA-Application-Design-Development-Farber/dp/0123884268
// Example 1.7

#include <iostream>

using namespace std;

#include <thrust/reduce.h>
#include  <thrust/sequence.h>
#include  <thrust/host_vector.h>
#include  <thrust/device_vector.h>

__global__ void fillKernel(int *a, int n) {
 int tid = blockIdx.x * blockDim.x + threadIdx.x;
 if (tid < n) a[tid] = tid;
}

int fill(int *d_a, int n) {
    int nThreadsPerBlock = 12;
    int nBlocks = n/nThreadsPerBlock + ((n%nThreadsPerBlock) ? 1 : 0);
    fillKernel <<< nBlocks, nThreadsPerBlock >>> (d_a, n);
}


int main() {}