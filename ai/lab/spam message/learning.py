import warnings
warnings.filterwarnings('ignore')
import os
os.environ["HDF5_USE_FILE_LOCKING"] = "FALSE"

# ---------- 停用词库路径，若有变化请修改 -------------
stopwords_path = r'results/scu_stopwords.txt'
# stopwords_path = r'results/sw.txt'
# ---------------------------------------------------

def read_stopwords(stopwords_path):
    """
    读取停用词库
    :param stopwords_path: 停用词库的路径
    :return: 停用词列表，如 ['嘿', '很', '乎', '会', '或']
    """
    stopwords = []
    # ----------- 请完成读取停用词的代码 ------------
    with open(stopwords_path, 'r', encoding='utf-8') as f: 
        stopwords = f.read()

    stopwords = stopwords.splitlines()
    #----------------------------------------------
    
    return stopwords

# 读取停用词
stopwords = read_stopwords(stopwords_path)

# ----------------- 导入相关的库 -----------------
from sklearn.pipeline import Pipeline
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn import metrics
from sklearn.preprocessing import StandardScaler, MaxAbsScaler
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.externals import joblib
# from sklearn.naive_bayes import BernoulliNB
from sklearn.naive_bayes import MultinomialNB
# from sklearn.naive_bayes import ComplementNB

pipeline_path = 'results/pipeline_nb.model'
# cv    = CountVectorizer(token_pattern=r"(?u)\b\w+\b", stop_words=stopwords, min_df=1e-5, max_df=0.6, ngram_range=(1, 5))
cv    = CountVectorizer(token_pattern=r"(?u)\b\w+\b", stop_words=stopwords)
tfidf = TfidfVectorizer(token_pattern=r"(?u)\b\w+\b", stop_words=stopwords, min_df=1e-5, max_df=0.6, ngram_range=(1, 5))
lr = LogisticRegression(penalty='l1', solver='liblinear',  max_iter = 10000, class_weight='balanced', C=0.01, tol=1e-5)
dt = DecisionTreeClassifier(max_features=0.5, max_depth=50, class_weight='balanced')
nb = MultinomialNB()
sc = StandardScaler(with_mean = False)
mas = MaxAbsScaler()

# pipline_list用于传给Pipline作为参数
pipeline_list = [
    # --------------------------- 需要完成的代码 ------------------------------
    
    # ========================== 以下代码仅供参考 =============================
    # ('tfidf', tfidf),
    ('cv', cv),
    # ('sc', sc), 
    # ('mas', mas),
    # ('classifier', lr)
    # ('classifier', dt)
    ('classifier', nb)
    # ========================================================================
    
    # ------------------------------------------------------------------------
]

# ----------------- 读取数据集 -----------------
import pandas as pd
import numpy as np
import time
from random import randint
from sklearn.model_selection import train_test_split
# 数据集的路径
data_path = "./datasets/5f9ae242cae5285cd734b91e-momodel/sms_pub.csv"
# 读取数据
sms = pd.read_csv(data_path, encoding='utf-8')
# 构建训练集和测试集
X = np.array(sms.msg_new)
y = np.array(sms.label)

# ----------------- 训练 -----------------
# 搭建 pipeline
pipeline = Pipeline(pipeline_list)
epoch = 20
X_train, X_test, y_train, y_test = None, None, None, None
start = time.time()
# 训练 pipeline
# for i in range(0, epoch): 
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=42 , test_size=0.2)
pipeline.fit(X_train, y_train)
end = time.time()
print('训练时间：', end-start, 's')
# 对测试集的数据集进行预测
y_pred = pipeline.predict(X_test)
print("在测试集上的分类结果报告：")
print(metrics.classification_report(y_test, y_pred))
print("在测试集上的 f1-score ：")
print(metrics.f1_score(y_test, y_pred))
print('# ---------------------------------- #')
# 在所有的样本上训练一次，充分利用已有的数据，提高模型的泛化能力
start = time.time()
pipeline.fit(X, y)
end = time.time()
print('泛化时间：', end-start, 's')
# 对测试集的数据集进行预测
y_pred = pipeline.predict(X_test)
print("在测试集上的分类结果报告：")
print(metrics.classification_report(y_test, y_pred))
print("在测试集上的 f1-score ：")
print(metrics.f1_score(y_test, y_pred))
# 保存训练的模型，请将模型保存在 results 目录下
joblib.dump(pipeline, pipeline_path)



# # 加载训练好的模型
# from sklearn.externals import joblib
# # ------- pipeline 保存的路径，若有变化请修改 --------
# pipeline_path = 'results/pipeline.model'
# # --------------------------------------------------
# pipeline = joblib.load(pipeline_path)
# def predict(message):
#     """
#     预测短信短信的类别和每个类别的概率
#     param: message: 经过jieba分词的短信，如"医生 拿 着 我 的 报告单 说 ： 幸亏 你 来 的 早 啊"
#     return: label: 整数类型，短信的类别，0 代表正常，1 代表恶意
#             proba: 列表类型，短信属于每个类别的概率，如[0.3, 0.7]，认为短信属于 0 的概率为 0.3，属于 1 的概率为 0.7
#     """
#     label = pipeline.predict([message])[0]
#     proba = list(pipeline.predict_proba([message])[0])
    
#     return label, proba
# # 测试用例
# label, proba = predict('医生 拿 着 我 的 报告单 说 ： 幸亏 你 来 的 早 啊')
# print(label, proba)