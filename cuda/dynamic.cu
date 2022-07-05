__global__ void quicksort(int *data, int left, int right){
    int nleft, nright; 
    cudaStream_t s1, s2; 
    partition(data+left, data+right, data[left], nleft, nright); 

    if(left < nright){
        cudaStreamCreateWithFlags(&s1, cudaStreamNonBlocking);
        quicksort<<< ..., s1 >>>(data, left, nright); 
    }
    if(nleft < right){
        cudaStreamCreateWithFlags(&s2, cudaStreamNonBlocking);
        quicksort<<< ..., s2 >>>(data, nleft, right); 
    }
}