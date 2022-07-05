__global__ void global_reduce_kernel(float *d_out, float *d_in){
    int myID = threadIdx.x + blockDim.x * blockIdx.x;
    int tid = threadIdx.x;
    
    // reduction
    for (unsigned int s = blockDim.x/2; s>0; s>>=1){
        if(tid < s){
            d_in[myID] += d_in[myID + s];
        }
        __syncthreads();
    }
    
    // only thread 0 writes result for this block back to global memory
    if (tid == 0)
        d_out[blockIdx.x] = d_in[myID];
}

__global__ void shmem_reduce_kernel(float *d_out, float *d_in){
    // sdata is allocated in the kernel call: 3rd arg to <<<b, t, shmem>>>
    extern __shared__ float sdata[];

    int myID = threadIdx.x + blockDim.x * blockIdx.x;
    int tid = threadIdx.x;
    
    // load shared memory from global memory
    sdata[tid] = d_in[myID]; 
    __syncthreads();

    // reduction
    for (unsigned int s = blockDim.x/2; s>0; s>>=1){
        if(tid < s){
            sdata[myID] += sdata[myID + s];
        }
        __syncthreads();
    }
    
    // only thread 0 writes result for this block back to global memory
    if (tid == 0)
        d_out[blockIdx.x] = sdata[myID];
}