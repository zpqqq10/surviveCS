# 5. Machine Learning



## What is ML?

Definition: 

- improve performance P
- at some task T
- with experience E



## Types

- supervised
- unsupervised
- reinforcement



## Model

Component: 

- domain set
- label set
- loss function
  - true risk, for **distribution**, $L_D(h)$
  - empirical risk, for **sampling**, $L_S(h)$
- overfitting
  - good model: low loss and **high accuracy**
  - overfitted model: low loss and **low accuracy**



## PAC learning theory

[从零开始学 PAC 理论 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/496517870)

[Foundations of Machine Learning -- CSCI-GA.2566-001 (nyu.edu)](https://cs.nyu.edu/~mohri/ml14/)

- i.i.d. 独立同分布
- 从定理可以分析得到，overfitting即是large $|\cal H|$，small $m$和large $\epsilon$
- $\cal H$是定义的函数空间

> For any finite hypothesis space of $\cal H$, given a training set $S$ of length $m$ sampled i.i.d. from $D$, then for any learned function $\tilde h = \arg\min_{h\in\cal H}L_s(h)$, with probability $1-\delta$, satisfies: 
> $$
> L_D(\tilde h)\leq L_D(h^*)+\sqrt{\frac2m\log(\frac{2|\cal H|}{\delta})}
> $$
>
> - the difference $\epsilon$ is bounded
> - 证明
>   - 由Hoeffding不等式可得，$m$越大，$L_D(h)-L_S(h)$二者之间的差距越小
>   - 搜索解$L_D(\tilde h)$与最优解$L_D(h^*)$满足$L_D(\tilde h)\leq L_D(h^*)+2\epsilon$

- bias-complexity decomposition
  - $e_a=L_D(h^*)$，approximation error or inductive bias
  - $e_c=L_D(\tilde h)-L_D(h^*)$,  estimation error
  - 当$|\cal H|$很小的时候，模型搜索出来的最优解就会和全局最优解有个gap（inductive bias），会导致underfitting
  - 当$|\cal H|$很大的时候，$\cal H$包括了一个非常接近的最优解，但是数据不足以支撑学到这个最优解，会导致overfitting
- 由上述分析得到
  - $\cal H$很重要，一个好的机器学习模型（函数空间）很重要，针对任务设计的往往会更好
  - 数据很重要，可以减小difference
  - 优化器optimizer很重要



## Promising Directions

- model robustness
  - distribution shift
    - 上述分析都是基于测试集和验证机独立同分布的假设，假如不满足呢？
  - noisy data
  - attacks
    - 安全性，比如带面具骗过支付宝人脸支付，图片带字污染gpt的结果
  - long-tailed data
    - 异常检测，异常情况只占非常非常小的比例
  - outliers
  - model interpretability and explainability
  - diffusion model
  - LLM