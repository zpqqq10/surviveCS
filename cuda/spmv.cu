__global__ void spmv_csr_scalar_kernel(
    const int num_rows, const int *rowptr,
    const int *index, const float *value,
    const float *vec, // operand vector
    float *y)   // destination vector
{
    int row = threadIdx.x + blockDim.x * blockIdx.x;
    if(row < num_rows){
        float dot = 0; 
        int row_start = rowptr[row];
        int row_end = rowptr[row+1]; 
        for (int j = row_start; j < row_end; j++){
            dot += value[j] * vec[index[j]];
        }
        y[row] += dot; 
    }
}