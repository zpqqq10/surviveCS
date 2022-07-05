__device__ float3 tile_calculation(Params myParams, float3 force){
    int i; 
    extern __share__ Params[] sourceParams;
    for (i = 0; i < blockDim.x; i++)
        force += bodyBodyInteraction(myParams, sourceParams[i]);
    return force;
}