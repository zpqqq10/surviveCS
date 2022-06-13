import warnings
# 忽视警告
warnings.filterwarnings('ignore')

import cv2
from PIL import Image
import numpy as np
import copy
import matplotlib.pyplot as plt
from tqdm.auto import tqdm
import torch
import torch.nn as nn
import torch.optim as optim
from torchvision.datasets import ImageFolder
import torchvision.transforms as T
from torch.utils.data import DataLoader
from torch_py.Utils import plot_image
from torch_py.MTCNN.detector import FaceDetector
from torch_py.MobileNetV1 import MobileNetV1
from torch_py.FaceRec import Recognition

def processing_data(data_path, height=224, width=224, batch_size=32,
                    test_split=0.1):
    """
    数据处理部分
    :param data_path: 数据路径
    :param height:高度
    :param width: 宽度
    :param batch_size: 每次读取图片的数量
    :param test_split: 测试集划分比例
    :return: 
    """
    transforms = T.Compose([
        T.Resize((height, width)),
        T.RandomHorizontalFlip(0.1),  # 进行随机水平翻转
        T.RandomVerticalFlip(0.1),  # 进行随机竖直翻转
        T.ToTensor(),  # 转化为张量
        T.Normalize([0], [1]),  # 归一化
    ])

    dataset = ImageFolder(data_path, transform=transforms)
    # 划分数据集
    train_size = int((1-test_split)*len(dataset))
    test_size = len(dataset) - train_size
    train_dataset, test_dataset = torch.utils.data.random_split(dataset, [train_size, test_size])
    # 创建一个 DataLoader 对象
    train_data_loader = DataLoader(train_dataset, batch_size=batch_size,shuffle=True)
    valid_data_loader = DataLoader(test_dataset, batch_size=batch_size,shuffle=True)

    return train_data_loader, valid_data_loader

# 1.加载数据并进行数据处理
# 数据集路径
data_path = "./datasets/5f680a696ec9b83bb0037081-momodel/data/image/"
device = torch.device("cuda:0") if torch.cuda.is_available() else torch.device("cpu")
############## Hyperparameters ##############
train_data_loader, valid_data_loader = processing_data(data_path=data_path, height=160, width=160, batch_size=32, test_split=0.1)
############## Hyperparameters ##############
print('Data is loaded...')

# 2.如果有预训练模型，则加载预训练模型；如果没有则不需要加载
model_path = 'results/gpu_.pth'
# recognize = Recognition())
# print('MTCNN is loaded...')
############## Hyperparameters ##############
epochs = 50
model = MobileNetV1(classes=2).to(device)
# model = MobileNetV1(classes=2)
# model.load_state_dict(torch.load(model_path, map_location=device))
# model = model.to(device)
optimizer = optim.Adam(model.parameters(), lr=1e-3) 
# optimizer = optim.SGD(model.parameters(), lr=1e-3) 
# optimizer = optim.RMSprop(model.parameters(), lr=1e-3) 

# 学习率下降的方式，acc三次不下降就下降学习率继续训练，衰减学习率
scheduler = optim.lr_scheduler.ReduceLROnPlateau(optimizer, mode='min',  factor=0.7, patience=5, verbose=True)
# scheduler = optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=10 ,eta_min=0, last_epoch=-1)
# scheduler = optim.lr_scheduler.ExponentialLR(optimizer, gamma=0.9, last_epoch= -1)
# scheduler = optim.lr_scheduler.StepLR(optimizer, step_size = 8, gamma=0.1, last_epoch=-1)
# 损失函数
criterion = nn.CrossEntropyLoss()  
############## Hyperparameters ##############
print('MobileNet is loaded...')

# 3.创建模型和训练模型，训练模型时尽量将模型保存在 results 文件夹
best_loss = 1e9
best_model_weights = copy.deepcopy(model.state_dict())
loss_list = []  # 存储损失函数值
for epoch in range(epochs):
    model.train()

    for batch_idx, (x, y) in enumerate(train_data_loader, 1):
        x = x.to(device)
        y = y.to(device)
        pred_y = model(x)

        loss = criterion(pred_y, y)
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        if loss < best_loss:
            best_model_weights = copy.deepcopy(model.state_dict())
            best_loss = loss
            
        loss_list.append(loss)

    # scheduler.step()
    scheduler.step(best_loss)
    print('epoch:' + str(epoch + 1) + '/' + str(epochs) + ' || Currently best: %.4f' % (best_loss))
print('Best Loss: %.4f' % (best_loss))
torch.save(best_model_weights, './results/gpu.pth')
print('Finish Training.')
print(loss_list)


# 4.评估模型，将自己认为最佳模型保存在 result 文件夹，其余模型备份在项目中其它文件夹，方便您加快测试通过。
corrects = 0
size = 0
model.eval()
for batch_idx, (x, y) in enumerate(valid_data_loader, 1):
    size += len(y)
    x = x.to(device)
    y = y.to(device)
    pred_y = model(x)

#         print(pred_y)
#         print(y-1)

    loss = criterion(pred_y, y)
    _, preds = torch.max(pred_y, 1)
    corrects += torch.sum(preds == y).item()
    rate = corrects / size
    optimizer.zero_grad()

    if loss < best_loss:
        best_model_weights = copy.deepcopy(model.state_dict())
        best_loss = loss
        
    loss_list.append(loss)

print('Total Corrects: %.4f || Size: %.4f || Rate: %.4f' % (corrects, size, corrects/size))