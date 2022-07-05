// launch v threads
__global__ void initialize_vertices(Vertex *vertices, int startting_vertex, int num_vertices){
    int v = threadIdx.x + blockDim.x * blockIdx.x; 
    if(v == starting_vertex){
        vertices[v] = 0; 
    }
    else {
        vertices[v] = -1;
    }
}

// launch e threads
__global__ void bfs(const Edge *edges, Vertex *vertices, int current_depth){
    int e = threadIdx.x + blockDim.x * blockIdx.x; 
    int vfirst = edges[e].first;    // the vertex on the one end
    int dfirst = vertices[vfirst];  // the distance of one vertex
    int vsecond = edges[e].second;  // the vertex on the other end
    int dsecond = vertices[vsecond]; // the distance of another vertex

    if((dfirst == current_depth) && (dsecond == -1)){
        // the first vertex is visited but the second one is not 
        vertices[vsecond] = dfirst + 1;
        done = false;   // global
    }
    if((dsecond == current_depth) && (dfirst == -1)){
        // the second vertex is visited but the first one is not 
        vertices[first] = dsecond + 1;
        done = false;
    }
    // do nothing is both are visited or unvisited
}

void main(){
    ...
    // initialize d_done to be true
    while(!h_done){
        bfs(edges, vertices);
        cudaMemcpy(&h_done, &d_done, sizeof(bool), cudaDeviceToHost);
    }
    ...
}