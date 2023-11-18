# CSG表示及其相关算法

实体模型的三类表示：

- 边界表示（Boundary Representation, B-reps），即用一组曲面（含平面）来描 述物体，这些曲面将物体分为内部和外部。边界表示具体又包括多边形表面模型和扫 描表示两种。
- 构造实体几何表示（Constructive Solid Geometry，CSG），它将实体表示成立 方体、长方体、圆柱体、圆锥体等基本体素的组合，可以采用并、交、差等运算构造新的形体。
- 空间分割表示（Space-Partitioning），用来描述物体的内部性质，将包含一物体的空间区域划分成一组小的、非重叠的、连续实体（通常是立方体）。



## basics

- Constructive Solid Geometry
- [三维建模：方法之CSG与B-Rep比较-CSDN博客](https://blog.csdn.net/wishchin/article/details/19327561)
- CSG树：以基本体素为叶结点，以正则布尔运算为中间结点的一棵二叉树，用于表示三维实体
- 基本体素表示
  - 半空间：给定一个曲面方程$f(x,y,z)=0$，定义$H_\_(f)=\{P\in E^3\ |\  f(x,y,z)\leq0\}$，和$H_+(f)=\{P\in E^3\ |\  f(x,y,z)>0\}$
  - $H_\_(f)\bigcup H_+(f)=E^3$
  - 每一个凸的三维实体可以表示为其三维边界面的半空间交集，即基本体素为凸体，不能为自由曲面
  - 采用半空间表示物体：$O=\bigcap_{i=1}^nH_\_(f_i)$
- 基本体素种类
  - 长方体
  - 圆柱体
  - 球体
  - 圆锥体
  - 圆环体
  - 正棱锥体



## 数据结构

- 结点
  - 左子树指针
  - 右子树指针
  - 坐标变换
  - 类型码
    - 叶结点为0
    - 其他结点，为不同类型的布尔运算赋enum
  - 基本体素指针
    - 在叶结点中非空
    - 方程
    - 定形参数
- 完整性：都能转换为Brep，因此可以完整地表示一个实体
- 唯一性：不成立，一个实体可以有多个CSG树，容易构造反例
- 有效性：一定有效，因为构造的过程都是有效的



## 分治算法

```pseudocode
F(tree, data){
	if (tree is a leaf)
	then primitive,F(tree, data)
	else combine(F(left_subtree, data), F(right_subtree, data), node(tree))
}
```



- 点体分类

  - 基于半空间

  - 分类结果的合并（并交差），以$S=A\bigcap^*B$为例，给定点P

    |       | in A  | on A         | out A |
    | ----- | ----- | ------------ | ----- |
    | in B  | in S  | on S         | out S |
    | on B  | on S  | on S / out S | out S |
    | out B | out S | out S        | out S |

- 边体分类

  - 基于半空间做
  - 分类结果的合并（并交差），以$S=A\bigcap^*B$为例，给定面X
    - $X_{inS}=X_{inA}\bigcap^*X_{inB}$
    - $X_{onS}=(X_{onA}\bigcap^*X_{inB})\bigcup^*(X_{inA}\bigcap^*X_{onB}) \bigcup^*(X_{onA}\bigcap X_{onB})$ 同向部分
    - $X_{outS}=X-(X_{inS}\bigcup^*X_{onS})$

- 面体分类

  - 基本同上



## 线框生成

- 对所有的面求交，生成交线
- 对每一个交线，求$curv_{onS}$
- 加上面的边界



## Brep生成

- 对每一个基本体素的面surf，求$surf_{onS}$，即为边界面
