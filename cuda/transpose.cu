#include<stdio.h>
#include "gputimer.h"

// matrix size
const int N = 1024;
// tile size
const int K = 16;
// serial in CPU
void transpose_CPU(float in[], float out[]){
    for (int j = 0; j < N; j++)
        for (int i = 0; i < N; i++)
            out[j + i*N] = in[i + j*N];
}

// serial in GPU
// <<<1, 1>>>
__global__ void transpose_serial(float in[], float out[]){
    for (int j = 0; j < N; j++)
        for (int i = 0; i < N; i++)
            out[j + i*N] = in[i + j*N];
}

// parallel in GPU
// <<<1, N>>>
__global__ void transpose_parallel_per_row(float in[], float out[]){
    int i = threadIdx.x;
    for (int j = 0; j < N; j++)
            out[j + i*N] = in[i + j*N];
}

// parallel in GPU by zpq
// <<<N, N>>>
__global__ void transpose_parallel_per_element(float in[], float out[]){
    int i = threadIdx.x;
    int j = blockIdx.x; 
    // blockDim.x == N
    out[j + i*N] = in[i + j*N];
}

// parallel in GPU
// to be launched with one thread per element, in KxK threadblocks
// thread (x, y) in grid writes element (i, j) of output matrix
// given that a block can contain 1024 threads at most, it is advised to use KxK blocks
/***************
 * dim3 block(N/K, N/K); 
 * dim3 threads(K, K); 
 * <<<blocks, threads>>>
**********/
__global__ void transpose_parallel_per_element(float in[], float out[]){
    int i = blockIdx.x * K + threadIdx.x;
    int j = blockIdx.y * K + threadIdx.y;
    out[j + i*N] = in[i + j*N];
}


// K = 16 will be faster than K = 32
// to be launched with one thread per element in KxK threadblocks
// thread blocks read & write tiles in coalesced fashion
// adjacent threads read adjacent input elements and write adjacent output elements
__global__ void transpose_parallel_per_element_tiled(float in[], float out[]){
    // (i, j) locations of the top left tile corners for input & output matrices
    int in_corner_i = blockIdx.x * K, in_corner_j = blockIdx.y * K;
    int out_corner_i = blockIdx.y * K, out_corner_j = blockIdx.x * K;
    // for readability
    int x = threadIdx.x;
    int y = threadIdx.y;

    __shared__ float tile[K][K]; 

    // coalesced read from global memory, transposed and write into shared memory
    tile[y][x] = in[(in_corner_i + x) + (in_corner_j + y) * N];
    __syncthreads();    // cause huge latency
    // read from shared memory and coalesced write to global memory
    out[(out_corner_i + x) + (out_corner_j + y) * N] = tile[x][y];
}