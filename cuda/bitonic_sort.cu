/*
 * Author: Rachel
 * <zhangruiqing01@baidu.com>
 *
 * File: bitonic_sort.cu
 * Create Date: 2015-08-05 17:10:44
 *
 */
 
#include<iostream>
#include<stdio.h>
#include<stdlib.h>
#include"gputimer.h"
#include<time.h>
#define NThreads 8
#define NBlocks 4
 
#define Num NThreads*NBlocks
 
using namespace Gadgetron;
 
 
__device__ void swap(int &a, int &b){
    int t = a;
    a = b;
    b = t;
}
 
__global__ void bitonic_sort(int* arr){
    extern __shared__ int shared_arr[];
    const unsigned int tid = blockIdx.x * blockDim.x + threadIdx.x;
    //const unsigned int tid = threadIdx.x;
    shared_arr[tid] = arr[tid];
    __syncthreads();
 
    //for(int i=2; i<=blociDim.x; i<<=1){
    for(unsigned int i=2; i<=Num; i<<=1){
        for(unsigned int j=i>>1; j>0; j>>=1){
            unsigned int tid_comp = tid ^ j;
            if(tid_comp > tid){
                if((tid & i)==0){ //ascending
                    if(shared_arr[tid]>shared_arr[tid_comp]){
                        swap(shared_arr[tid],shared_arr[tid_comp]);
                    }
                }
                else{ //desending
                    if(shared_arr[tid]<shared_arr[tid_comp]){
                        swap(shared_arr[tid],shared_arr[tid_comp]);
                    }
                }
            }
            __syncthreads();
        }
    }
    arr[tid] = shared_arr[tid];
}
 
int main(int argc, char* argv[])
{
    GPUTimer timer;
    int* arr= (int*) malloc(Num*sizeof(int));
 
    //init array value
    time_t t;
    srand((unsigned)time(&t));
    for(int i=0;i<Num;i++){
        arr[i] = rand() % 1000; 
    }
 
    //init device variable
    int* ptr;
    cudaMalloc((void**)&ptr,Num*sizeof(int));
    cudaMemcpy(ptr,arr,Num*sizeof(int),cudaMemcpyHostToDevice);
 
    for(int i=0;i<Num;i++){
        printf("%d\t",arr[i]);
    }
    printf("\n");
 
 
    dim3 blocks(NBlocks,1);
    dim3 threads(NThreads,1);
 
    timer.start();
    bitonic_sort<<<blocks,threads,Num*sizeof(int)>>>(ptr);
    //bitonic_sort<<<1,Num,Num*sizeof(int)>>>(ptr);
    timer.stop();
 
 
    cudaMemcpy(arr,ptr,Num*sizeof(int),cudaMemcpyDeviceToHost);
    for(int i=0;i<Num;i++){
        printf("%d\t",arr[i]);
    }
    printf("\n");
 
    cudaFree(ptr);
    return 0;
}
