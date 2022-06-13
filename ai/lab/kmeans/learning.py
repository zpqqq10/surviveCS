import os
import sklearn
import warnings
import copy
import random
import matplotlib
import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler
# from sklearn.cluster import KMeans
from sklearn.externals import joblib
from sklearn.metrics import calinski_harabasz_score,silhouette_score

warnings.filterwarnings('ignore')

class KMeans():
    """
    Parameters
    ----------
    n_clusters 指定了需要聚类的个数，这个超参数需要自己调整，会影响聚类的效果
    n_init 指定计算次数，算法并不会运行一遍后就返回结果，而是运行多次后返回最好的一次结果，n_init即指明运行的次数
    max_iter 指定单次运行中最大的迭代次数，超过当前迭代次数即停止运行
    """
    def __init__(
                self,
                n_clusters=8,
                n_init=10,
                max_iter=300
                ):

        self.n_clusters = n_clusters
        self.max_iter = max_iter
        self.n_init = n_init
        self.labels_ = []
        self.cluster_centers_=[]


    def randCenters(self, data): 
        # number of points & dimensions
        n, dimensions = data.shape
        # the matrix storing the centers
        centers = np.zeros((self.n_clusters, dimensions))
        # the index of centers
        # indexes = [int(random.uniform(0, n-1)) for i in range(self.n_clusters)]
        indexes = [random.randint(0, n-1) for i in range(self.n_clusters)]
        while len(set(indexes)) != len(indexes): 
            # avoid duplicate indexes
            indexes = [int(random.uniform(0, n)) for i in range(self.n_clusters)]
        for i in range(self.n_clusters): 
            centers[i, :] = data.iloc[indexes[i], :]
        return centers

    def run(self, data): 
        # number of points & dimensions
        n, dimensions = data.shape
        # [index, error]
        result = np.mat(np.zeros((n, 2)))
        result = result - 1
        changed = True
        iterations = self.max_iter

        # 1. create initial centers
        centers = self.randCenters(data)

        # 4. terminate iteration if centers do not change or it reaches the limitation
        while changed and iterations: 
            changed = False
            iterations -= 1
            # 2. cluster
            for i in range(n): 
                # find the closest centroid
                point = np.array(data.iloc[i, :])
                distances = [np.linalg.norm(point - centers[j, :]) for j in range(self.n_clusters)]
                ind = distances.index(min(distances))
                if result[i, 0] != ind: 
                    changed = True
                    result[i, :] = ind, distances[ind]**2
            # 3. update centers
            for j in range(self.n_clusters):
                # points in j-th cluster
                points = np.array(data)[np.nonzero(result[:,0].A == j)[0]]
                centers[j, :] = np.mean(points, axis=0) 
        return centers, result

    def fit(self, x):
        """
        用fit方法对数据进行聚类
        :param x: 输入数据
        :best_centers: 簇中心点坐标 数据类型: ndarray
        :best_labels: 聚类标签 数据类型: ndarray
        :return: self
        """
        ###################################################################################
        #### 请勿修改该函数的输入输出 ####
        ###################################################################################
        # #

        # #
        ###################################################################################
        ############# 在生成 main 文件时, 请勾选该模块 ############# 
        ###################################################################################

        minsum = np.inf
        for i in range(self.n_init): 
            centers, result = self.run(x)
            # 求和保留最小的
            target = np.sum(result, axis=0)[0, 1]
            if target < minsum: 
                minsum = target
                best_centers = centers
                best_labels = result[:, 0].astype(int)
        self.cluster_centers_ = best_centers
        self.labels_ = best_labels
        return self

###################################### read raw data
file_dir = './data'
# df 作为最后输出的 DataFrame 初始化为空
df = pd.DataFrame()
feature = ['cpc', 'cpm']
df_features = []
for col in feature:
    infix = col + '.csv'
    path = os.path.join(file_dir, infix)
    df_feature = pd.read_csv(path)
    # 将两个特征存储起来用于后续连接
    df_features.append(df_feature)

# 2 张 DataFrame 表按时间连接
df = pd.merge(left=df_features[0], right=df_features[1])

###################################### load model
scaler = joblib.load('./results/scaler.pkl')
# kmeans = joblib.load('./results/km.pkl')
n_components = 3
# pca = PCA(n_components=n_components, whiten = False)
pca = joblib.load('./results/pca.pkl')
km = KMeans(n_clusters=3, n_init=50, max_iter=800)
# hours + daylight(3): [0.45, 0.75, 0.91, 1]


###################################### process data
# 将 timestamp 列转化为时间类型
df['timestamp'] = pd.to_datetime(df['timestamp'])
# 将 df 数据按时间序列排序，方便数据展示
df = df.sort_values(by='timestamp').reset_index(drop=True)
# 尝试获取时间关系
df['hours'] = df['timestamp'].dt.hour
df['daylight'] = ((df['hours'] >= 7) & (df['hours'] <= 22)).astype(int)
# transform data
columns = ['cpc', 'cpm', 'hours', 'daylight']
data = df[columns]
# standardize
data = scaler.fit_transform(data)
data = pd.DataFrame(data, columns=columns)
# dimensionality reduction
data = pca.fit_transform(data)
data = pd.DataFrame(data,columns=['Dimension' + str(i+1) for i in range(n_components)])


###################################### clustering
# score1_list = []
# score2_list = []
# for i in range(2,10):
#     kmeans = KMeans(n_clusters=i,n_init=30,max_iter=500)
#     kmeans.fit(data)
#     score1 = round(calinski_harabasz_score(data,kmeans.labels_), 2)
#     score2 = round(silhouette_score(data,kmeans.labels_), 2)
#     score1_list.append(score1)
#     score2_list.append(score2)
#     print('聚类数目:%s  calinski_harabasz_score:%-10s  silhouette_score:%-10s'%(i,score1,score2))
km.fit(data)
# print(km.labels_)


###################################### save model
# joblib.dump(pca, './results/pca.pkl')
joblib.dump(km, './results/km.pkl')