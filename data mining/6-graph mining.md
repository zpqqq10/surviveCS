# 6. Graph Mining

## Graph Data

A graph is a mathematical structure used to model **pairwise relations** between objects

- Can be defined as $G=\{E,V,X\}$
  - edge
  - vertex
  - feature nodes
- types
  - undirected
  - directed
  - weighted
  - heterogeneous
  - dynamic / temporal
- task of graph mining
  - subgraph
  - graph
  - edge
  - vertex



## Task

- node classification
  - given a graph and labels of partial nodes, predict the labels of the rest
  - different from traditional ML: **i.i.d. does not hold**
- link prediction
  - predict missing edges
- important motif mining
  - a motif is a small, recurring, and statistically significant subgraph within a graph
  - help understanding the properties and functions of graph
  - related to molecule
- graph classification
  - assign a label to an entire graph



## Representation Learning

- map each node/graph into continuous low-dimensional vector space
- preserve structural and relational information of the graph
- classical
  - matrix factorization
  - random walk
- [[Graph Learning 综述\] 2021最全图学习算法综述 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/373639485)



### matrix factorization

- factorizing a matrix into a product of two lower-dimensional matrices
- the goal is to approximate the original matrix
- $W\times H\approx V$, $V$ is the original matrix
- *LINE: large-scale information network embedding*
  - neighbor relations
  - 1-order
  - 2-order
  - high-order
  - [读透LINE: Large-scale Information Network Embedding - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/367428448)
- *page-rank* by google
  - [PageRank算法详解 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/137561088)
  - [[算法系列03\] 浅谈PageRank算法 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/197877312)



### random walk

- random walk to generate sequences of nodes
- node2vec to generate representation of nodes
  - related to word2vec
- *DeepWalk* generate sequences of nodes on the basis of Word2vec with leveraging random walk
  - [【论文笔记】DeepWalk - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/45167021)
  - [深入浅出Word2Vec原理解析 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/114538417)
  - [【图文并茂】通过实例理解word2vec之Skip-gram - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/215797088)
  - [（二）通俗易懂理解——Skip-gram和CBOW算法原理 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/39562499)
  - [【精选】Word2Vec原理解析二：层级Softmax与负采样_负采样和层级softmax-CSDN博客](https://blog.csdn.net/qq_22795223/article/details/105627375)
    - hierarchical softmax：普通的计算softmax需要对全部输出结果都进行一次求和计算，而采用huffman树和hierarchical softmax之后，这种对**所有词概率的求和**就转化为了沿着huffman路径进行累乘，计算量不一样
    - negative sampling：[理解 Word2Vec 之 Skip-Gram 模型 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/27234078) 即backward的时候，对于负样本来说，根据公式随机选择若干负样本的更新路径进行权重更新，而不是更新整个网络（所有路径）的权重



# 7. Graph Neural Network

- $f(A,X)\to H$
- challenges
  - **sparsity** and **large-scale** of $A$
  - **permutation invariance**：对输入顺序进行改变，不改变最后的结果
- motivation
  - homophily assumption：拥有相似属性的nodes往往会彼此相连
- GNN from **spatial** perspective
  - [理解Graph Neural Networks 消息传递机制——多篇论文图神经网络消息传递框架对比 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/352510643)
  - aggregation：聚合邻居的信息
    - neighbor pooling
    - neighbor normalization
    - neighbor attention
  - update：更新当前节点的信息
    - concatenation
    - gated update
    - 希望解决的问题：over-smoothing，节点变得不可区分，应该和MLP倾向于学习低维度特征有关
- GNN from **spectral** perspective
  - graph convolution network
  - fourier transform
  - laplace operator：描述多元函数的光滑程度
    - on graph: $grad(f)=K^Tf,\ \Delta(f)=div(grad(f))=KK^Tf$
    - on graph: $L=KK^T=D-A$ named as a *Laplacian matrix*
  - GCN: convolutional + deep neural network
- GNN from **loss** perspective
- applications
  - recommendation
  - knowledge graph
  - cv
  - anomaly detection





