#include <stdio.h>

__global__ void square(float *d_out, float *d_in)
{
    int idx = threadIdx.x;
    float f = d_in[idx];
    d_out[idx] = f * f;
}

int main(int argc, char **argv){
    const int ARRAY_SIZE = 64;
    const int ARRAY_BYTES = ARRAY_SIZE * sizeof(float);

    // generate the input array
    float h_in[ARRAY_SIZE]; 
    for (int i = 0; i < ARRAY_SIZE; i++){
        h_in[i] = float(i);
    }
    float h_out[ARRAY_SIZE];

    // declare GPU memory pointers
    float *d_in, *d_out; 

    // allocate GPU memory
    cudaMalloc((void **)&d_in, ARRAY_BYTES); 
    cudaMalloc((void **)&d_out, ARRAY_BYTES); 

    // transfer the array to GPU
    cudaMemcpy(d_in, h_in, ARRAY_BYTES, cudaMemcpyHostToDevic);

    // launch the kernel
    square<<<1, ARRAY_SIZE>>>(d_out, d_in);

    // copy back the result
    cudaMemcpy(h_out, d_out, ARRAY_BYTES, cudaMemcpyDeviceToHost);

    // print
    
    // free memory
    cudaFree(d_in); 
    cudaFree(d_out);
}