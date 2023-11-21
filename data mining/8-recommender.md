# 8. Recommender System



## background

- classic definition
  - a set of users $U=\{u_1,...u_n\}$
  - a set of items $I=\{i_1,...i_m\}$
  - a matrix of history feedback $R^o\subseteq \R^{n\times m}$
  - to learn prediction of user interests on each item
- a feedback loop
  - training
  - serving
  - collecting
  - 即用collecting的数据合并进training data，重新training然后又重新serving
  - 反馈数据分为explicit feedback data和implicit feedback data



## models

- 2-stage 召回和排名
  - candidate retrieval
  - ranking



### retrieval

- 一般做法，对user和item做embedding，然后在embedding space里面做kNN search
- matrix factorization
  - user features x item features = feedback
  - feedback矩阵往往是非常稀疏的
  - 交互少的用户和item很难学
- information-enhanced embedding models
  - neighbor-based models
    - enrich the user representation with his rating history
  - feature-based models
  - graph-based models
  - methods with modeling **sequential dynamics**
  - 把别的东西也塞进用户的特征表示



### ranking

- mainly focus on modeling the **interaction between features**
- linear
  - collect features into a numerical feature vector
  - leverage linear function to map the feature vector into the final predicted score
- polynomial
  - modeling high-order feature interactions
  - factorization machine分解机
    - factorize parameters $w_{i,j}$ into inner product of two latent vector 类比tensorf
    - field-aware FM: captures field-aware weights
- neural
  - 3 threads
    - directly developing better feature interaction modules
    - stands on the shoulder of FM models
    - leveraging attention mechanism in capturing diverge and dynamic contribution of different feature interactions



## typical problems

- learning to rank
  - metrics in recommendation
    - recall@K
    - precision@K
    - NDCG@K [(Normalized Discounted Cumulative Gain)](https://zhuanlan.zhihu.com/p/371432647)
    - AUC (Area Under the Curve)
  - BPR loss，要学会排名而不是学会分类，顺序/排名很重要
- Long-tailed data
- data bias
  - selection bias 用户只会对自己感兴趣的打分，而不会对所有的item打分，因此观察到的打分不能有效代表整体
  - exposure bias 常在隐式反馈里面出现，只有正反馈信号，跟什么样的item曝光在用户面前有关
  - conformity bias 用户往往会从众，而不是真实评分
  - position bias 用户往往倾向于点击推荐列表里位置更高的item
  - debias
    - re-weighting
    - re-labeling
    - GAN
    - robust optimization



## potential directions

- LLM
- fundamental problems in RS
- taking feedback loop into consideration
  - 指考虑反馈的指标，比如抖音的目标不只是更好的推荐（得到用户评分），而是长期收益：用户的留存率和互动率等




