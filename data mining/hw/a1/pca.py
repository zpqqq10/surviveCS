import numpy as np
from icecream import ic
import matplotlib.pyplot as plt

X_input = np.array([[0, 0], [0, 1], [1, 0], [1, 2], [2, 1], [2, 2]])
ic(X_input)

# 1 Compute the mean of the sample points and write the centered design matrix X_dot

X_mean = np.mean(X_input, axis=0)
ic(X_mean)

X_dot = X_input - X_mean
# X_dot = X_input
ic(X_dot)

# 2. Find all the principal components of this sample. Write them as unit vectors.

S_cov = np.cov(X_dot, rowvar=False)
ic('covariance matrix', S_cov)

eigenvalues, eigenvectors = np.linalg.eig(S_cov)
ic(eigenvalues, eigenvectors)

k = 2
X_pca = X_dot.dot(eigenvectors.T[:, :k])
ic(X_pca)

# visualization
fig, ax = plt.subplots()
ax.scatter(X_dot[:, 0], X_dot[:, 1], label="data")
ax.scatter(X_pca[:, 0], X_pca[:, 1], label="pca")
# 添加x轴和y轴
ax.axhline(0, color='black', linewidth=0.5)
ax.axvline(0, color='black', linewidth=0.5)
# 绘制主成分的箭头
for i in range(len(eigenvectors)):
    ax.arrow(0, 0, eigenvectors[i, 0], eigenvectors[i, 1], head_width=0.1, head_length=0.1, fc='blue', ec='blue')
    ax.plot([0, -eigenvectors[i, 0]], [0, -eigenvectors[i, 1]], color='blue')
# 绘制原始数据到主成分轴上的投影
# for i in range(len(X_input)):
#     projection_1 = X_input @ eigenvectors[:, 0]
#     projection_2 = X_input @ eigenvectors[:, 1]
#     ax.scatter(projection_1[:, 0], projection_1[:, 1], label="projection 1")
#     ax.scatter(projection_2[:, 0], projection_2[:, 1], label="projection 2")

# ax.plot([X_input[0, i], projection_1[0]], [X_input[1, i], projection_1[1]], color='yellow', linestyle='--', linewidth=1)
# ax.plot([X_input[0, i], projection_2[0]], [X_input[1, i], projection_2[1]], color='green', linestyle='--', linewidth=1)

ax.legend()
plt.show()

## a) Which of those two principal components would be preferred if you use only one?
## 1.2

# 计算每个主成分的贡献度
explained_variance_ratio = eigenvalues / np.sum(eigenvalues)

# 绘制解释方差图
# plt.plot(range(1, len(explained_variance_ratio) + 1), np.cumsum(explained_variance_ratio), marker='o', linestyle='--')
# plt.xlabel('Number of Principal Components')
# plt.ylabel('Cumulative Explained Variance')
# plt.title('Scree Plot')
# plt.show()

## b) What information does the PCA algorithm use to decide that one principal components is better than another?
## variance_ratio, the larger, the better

## c) From an optimization point of view, why do we prefer that one?
## maximize the target

# 3. Compute the vector projection of each of the original sample points onto the preferred principal component.

X_proj = np.dot(X_input, eigenvectors[:, 0])[:, np.newaxis] * eigenvectors[:, 0].T
ic(X_proj)
# visualization
fig, ax = plt.subplots()
ax.scatter(X_proj[:, 0], X_proj[:, 1], label="projected")
# 添加x轴和y轴
ax.axhline(0, color='black', linewidth=0.5)
ax.axvline(0, color='black', linewidth=0.5)
ax.legend()
plt.show()
