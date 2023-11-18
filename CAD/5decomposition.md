# Ray Casting

- 计算光线与实体靠近视点的交点



# 分解模型 Decomposition Model

- 定义：将三维空间分割成一组**体元**，采用三维物体所占据的所有空间体元对其进行逼近表示的模型
- voxel - occupancy field
- 布尔运算：进行简单的合并处理即可
- 基于Brep，CSG生成DM - volume rendering
- 问题：精度与存储的综合问题



## 八叉树

[八叉树Octree-CSDN博客](https://blog.csdn.net/augusdi/article/details/36001543)

- 对三维空间进行自适应分割，体元为大小不同的轴对齐立方体
- 自适应分割
  - 定义一个包含物体的三维空间，设为$2^n\times 2^n\times 2^n$
  - 用当前空间的三个中分面将其分割成八个子空间，并判别每一个子空间与物体的关系：full/partial/empty
  - 对partial的子空间，判断是否满足精度要求；如不满足，继续对其进行递归过程，直至满足精度要求
- 体元的几何信息表示
  - 八叉树结点的编码方式
    - 对结点在兄弟之间进行编号
      - 左下角编号为0
      - 沿X轴正方向的+1
      - 沿Y轴正方向的+2
      - 沿Z轴正方向的+4
    - 定义结点的编码：
      - 在结点的兄弟编号之前冠以父结点的编码，到第一层为止，
      - 即$N_1...N_i...N_m$，$0\leq N_i\leq7$，$m$为结点层数
  - 体元的几何信息表示
    - 结点体元的边长为$2^{n-m}$
    - 设$N_i=e_i2^2+d_i2^1+c_i2^0$
    - 左下角点的坐标
      - $X=c_12^{n-1}+...+c_m2^{n-m}$
      - $Y=d_12^{n-1}+...+d_m2^{n-m}$
      - $Z=e_12^{n-1}+...+e_m2^{n-m}$



## Dexel

> "Dexel"确实更多地与深度有关。在一些上下文中，Dexel是指深度像素（Depth Pixel）的缩写。深度像素是在二维图像上不仅包含颜色信息，还包含深度（或Z轴）信息的像素。
>
> 在三维图形学和计算机图形学中，深度信息是描述场景中物体在Z轴上位置的重要数据。Dexels用于表示在三维空间中的深度像素，以便更准确地捕捉和渲染物体的深度信息。这对于进行透视和三维效果非常重要。

[Dexel - Wikipedia](https://en.wikipedia.org/wiki/Dexel)

[4: Dexel representation of a work piece in three directions in space. | Download Scientific Diagram (researchgate.net)](https://www.researchgate.net/figure/Dexel-representation-of-a-work-piece-in-three-directions-in-space_fig2_300279648)

- 记录三个方向的深度
