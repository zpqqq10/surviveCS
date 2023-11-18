# 边界表示及其数据结构

- 边界表示：B-rep（Boundary Representation）



## 什么决定了一个物体/形状

- 拓扑结构：平面图模型
- 点线面信息及其相互之间的连接关系

> 如果网格的每个边最多被两个面片共用，那么这个网格就是流形网络，否则称为非流形网络



## 边界表示

1. 边界表示的组成
   - 边界的拓扑结构信息：所有边界元素 + 拓扑关系
   - 边界的几何信息：描述边界元素的**具体形状**与**位置**的信息

> 边界元素的种类： 
>
> - 点
> - 边：有限边的刻画需要点
> - 环：内环走向与外环走向相反
> - 面：有界面的刻画需要边
> - 体
>
> 拓扑关系的种类：
>
> - 边界元素之间的邻接关系
>
> 几何信息
>
> - 点的坐标 vertex - point
> - 边方程 edge - curve
> - 环 loop
> - 面方程 face - surface



## ds

### 翼边数据结构 Winged-Edge Data Structure

- 核心思想：**以边为核心组织**的数据结构
- 边的数据结构：引入环，$\{v_1,v_2,loop_l,loop_r,E_{lcc},E_{lcw},E_{rcc},E_{rcw}\}$共八个指针表示一个边
- 其他
  - 面的链表
  - 环的链表
  - 点的相连的一条边的指针
- 如何找出一个环的所有边：[cad - Winged-edge vs half-edge - Stack Overflow](https://stackoverflow.com/questions/34548207/winged-edge-vs-half-edge)

```c
all_edges(lp){
	te = lp -> e0;  // 取一条开始的edge
	do {
		if(te -> loop_r == lp) // 不能确保环上每条边的方向都是通顺的 
			te = te-> E_rcw;
        else
            te = te-> E_lcw; // 应该是约定了遍历的方向即可
	} while(te != lp->e0)
}
```



> 边的左右环
>
> - 从v1 -> v2，以及loop~l~和loop~r~
> - 每个边应该连接四条边
> - 左环两条边E~lcc~和E~lcw~：l代表left，左环；cw代表clockwise，从当前边出发顺时针到E~lcw~；cc代表counter-clockwise，从当前边出发逆时针到E~lcc~
> - 右环两条边E~rcc~和E~rcw~：r代表right，右环；与上同理
> - 共八个指针表示了一个边的数据结构



### 半边数据结构 Half-Edge Data Structure

- 核心思想：在数据结构中把一条物理边当成两条有向边表示，其中每条边只与一个面（环）相连，称为半边

```c++
struct solid{
    solid* prevs;
    solid* nexts;
    face* sfaces;
};

struct face{
    face* prevf;
    face* nextf;
    solid* fsolid;
    loop* floops;
};

struct loop{
    loop* prevl;
    loop* nextl;
    face* lface;
    halfedge* lhe;
    edge* ledg;
};

struct halfedge{
    halfedge* prv;
    halfedge* nxt;
    loop* heloop;
    vertex* hev;
    edge* hee;
};

// optional?
struct edge{
    edge* preve;
    edge* nexte;
    solid* es; // ?
    halfedge* ehe;
};

struct vertex{
    vertex* prevv;
    vertex* nextv;
    halfedge* vhe;
};
```



最后的实现：https://github.com/zpqqq10/cadEuler/blob/main/include/ds.hpp



### Face Adjacency Hypergraph(FAH)

- 核心思想：以**面为结点**，以**面之间的边相连关系**为弧，以**面之间的点相连关系为超弧**的图
  - 弧用实线
  - 超弧用虚线
- 只有面和边：Face Adjacency Graph(FAG)



## 基于B-rep的建模操作与算法

- [三维CAD建模 基于Brep的扫成与欧拉操作_三维欧拉操作实例-CSDN博客](https://blog.csdn.net/yhf_naive/article/details/84585532)
- [几何算法——10.欧拉操作_基本欧拉操作-CSDN博客](https://blog.csdn.net/luolei188/article/details/127935267)
- [三维CAD——基于B_rep的建模操作 - Tiny656 - 博客园 (cnblogs.com)](https://www.cnblogs.com/tiny656/p/3537085.html)



### 欧拉操作

- 欧拉公式：$V-E+F=2$

- 扩展：$V-E+F = 2(S-H)+R$

  - V 点
  - E 边
  - F 面
  - S 实体solid的数目
  - H 孔洞hole/handle的数目
  - R 内环ring的数目

- 欧拉操作的设计思想

  - 提供**一组**通用、完备、有效的B-rep拓扑信息生成
  - 每种操作可构建的拓扑元素满足欧拉公式，保证有效性

- 欧拉操作的选择：维护扩展欧拉公式的等号成立

  - mev: make edge +vertex
  - mef: make edge + face
  - mvfs: make vertex + face + solid
    - also: MBFLV
  - kemr: kill edge & make ring
  - kfmrh: kill face & make ring + hole
  - semv: split edge & make vertex （为了实用加的）

- 欧拉操作的功能与实现

  - mvfs

    - 构造一个点，一个面，一个体

    - **一般是从无到有的第一步**
  
    - ```c++
      solid* mvfs(){
      	vertex *v;
          loop *lp;
          face *f;
          solid *ob;
          solid->sfaces = f; f->fsolid = ob;
          f->floops = lp;    lp->lface = f;  lp->ledg = NULL;
          return ob;
      }
      ```

  - mev

    - 生成一个新点，同时生成一条连接新点与给定点的边

    - 如果环已经有边，新加边与给定边的的四个半边要能形成一个循环；如果环还没有边，新边的两个半边要能循环
  
    - ```c++
      halfedge* mev(vertex* v1,loop* lp){
          halfedge *he1, he2;
          vertex *v2;
          edge * edg;
          edg->he1 = he1; edg->he2 = he2;
          he1->hee = edg; he2->h22 = edg;
          he1->heloop = he2->heloop = lp;
          he1->startv = v1; he2->startv = v2;
          he1->nxt = he2; // 两个半边之间要接上，能循环回去
          if (lp->ledg == NULL){
              // 这个环没有边，现在加进来的是第一个边
              he2->nxt = NULL;
              lp->ledg = he1;
          }
          else{
              // 这个环已经有边了，先循环找出起始点为v1的半边，然后接上，能让它循环回去
              halfedge* he;
              for(he = lp->lhe; he->nxt->startv != v1; he = he->nxt){}
              he2->nxt = he->nxt;
              he->nxt = he1;
          }
          return he1;
      }
      ```

  - mef
  
    - 以两个给定点为端点生成一条新边，同时生成一个新环/新平面
    - 如已经有了三条边，连接上度数为1的两个点，生成一个矩形面

  - kemr
  
    - 消去环中的一条边，生成一个内环
    - 如一个矩形面里面有一个三角形环，三角形环与矩形面有一条边相连，kemr的作用就是消去连接的这条边，使得三角形环成为内环

  - kfmrh
  
    - 删除一个面，将其定义为另一个面的内环，进而在体中构建一个柄（洞），或者将两个物体合并为一个物体
    - 如一个正方体内部/外部有一个小立方体，消去重叠的面，可以形成洞/合并

  - semv
  
    - 在给定边上生成一个新点，将原边分裂为两条边



#### example构造同轴空心立方体

```c
mvfs()
mev() * 3 
mef() // 顶面构造完成
mev() * 4 // 构造四条侧边
mef() * 4 // 除了底面都构造好了
mev() * 4 
mef() // 底面的内环好了并有一条边与底部四条边连接，底面现在有一个环和一个空心面
mev() * 4 // 空洞立方体的四条侧边
mef() * 4 // 空洞立方体的四个侧面
kfmrh() // done
```

> 构建一个简单的立方体，构建四个侧面的时候就要选取一个面进行构建。也就是说，一开始构造的顶面，有两个法向量，一个向上一个向下，选取一个面继续构造即可。
>
> 最后每个面都要选取法向量，朝外即可。侧边的两个半边，分别可以用来给相邻的两个面形成向外的法向量。



#### 欧拉操作的结论

1. 所有流形体的B-rep都可以由欧拉操作构建出来
2. 由欧拉操作构建的B-rep在拓扑结构上一定有效
3. 将这种表示正确嵌入三维空间$E^3$中，结果一定是流形体



几何有效性问题：

1. 边界元素不自交
2. 同种边界元素之间仅相交在公共边界上

=> 要在建模操作中保证有效性



### 扫掠操作 sweeping

- 扫掠体：由一个平面二维区域沿一条给定的轨迹线扫描出的一个二维半物体

分类：

- 平移扫掠

  - 轨迹线是一直线段

  - 算法实现

    - 几何信息构造：每一个已知点构造一个新的几何点，新点 = 已知点+$d\cdot\vec v$，由此构造一条新的边

    - 几何信息构造：每一个已知边构造一条新的几何边，根据侧边或者轨迹线构造一个新的几何面

    - 几何信息构造：每一个已知面，根据轨迹线构造一个新的几何面

    - 拓扑信息构造

      ```pascal
      sweep(S: Solid, F: Face, V: Vector, d: REAL)
      // suffix of up: a vertex on the bottom (assuming sweeping downwards)
      begin
      	L = loop of F; 
      	firstv = first vertex of L; 
      	firstup = firstv + d*v;
      	mev(firstv, firstup, newe); // new edge
      	prevup = firstup;
      	nextv = next vertex of L;
      	while(nextv != firstv)
      	begin:
          	up = nextv + d*v;
          	mev(nextv, up, newe);
          	// side face
          	mef(prevup, up, F, newf, newe);
          	// continue looping
          	prevup = up; 
          	nextv = next vertex of L;
      	end
      	// bottom face
      	mef(prevup, firstup, F, newf, newe);
      end
      ```

- 旋转扫掠

  - 旋转轨迹线是一个圆或者圆弧
  - 算法实现与平移扫掠相似
    - 对封闭情况做特殊处理

- 广义扫成

  - 轨迹线可以是任意空间曲线
  - 二维区域可以在扫掠中变化
    - solidworks方法：引入多条轮廓控制线，要求平面区域的轮廓线在垂采样点处与所有控制线接触
  - 算法实现
    - 拓扑信息构造：与平移相似
    - 几何构建：如何精确表示扫掠曲面
    - 理论方法：$s$表示弧长参数，$\vec t$表示切向量，$\vec n$和$\vec b$分别表示x和y方向的法向量？
      - 平面表示为$C(u)=(C_1(u), C_2(u))$分别表示x和y方向
      - 沿着轨迹线的曲面可以表示为$\Gamma_{(s,u)}=\vec r(s) + C_1(u)\vec n(s) + C_2(u)\vec b(s)$
      - gpt说也有采样然后插值的（？
    - 实用方法
      - 平面的边界和空间轨迹线均采用NURBS曲线表示，扫掠曲面均采用NURBS曲面逼近表示
      - 曲面逼近表示：由轨迹线采样点处的平面区域的NURBS曲线表示的控制顶点组合而成

> - [从零开始学图形学：10分钟看懂贝塞尔曲线 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/344934774)
> - [B-spline Curves 学习之B样条基函数的定义与性质（2） - 夏天/isummer - 博客园 (cnblogs.com)](https://www.cnblogs.com/icmzn/p/5100761.html)
> - [曲线杂谈（三）：青出于蓝的B-Spline和NURBS - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/500426271)
> - [计算几何07_NURBS曲线与曲面_nurbs曲面_沉默的舞台剧的博客-CSDN博客](https://blog.csdn.net/qq_35312463/article/details/112954907)



### 布尔运算 Boolean

- 输入：`b(A), b(B)`
- 输出：`b(A <op> B)`
- b(A or B) = b(A) out B + b(B) out A + b(A) and b(B)同向部分
- b(A and B) = b(A) in B + b(B) in A + b(A) and b(B)同向部分
- b(A - B) = b(A) out B + b(B) in A + b(A) and b(B)异向部分
- 算法步骤
  - 求两物体各表面之间的交线段 
    - bbox粗判，剔除无交面
      - [AABB包围盒和OBB包围盒区别_obb aabb-CSDN博客](https://blog.csdn.net/baidu_38621657/article/details/113788440)
    - 求相交部分
      - 两曲面方程相交，求交线方程
      - 交线与每一面的边界求交，求出位于曲面内部的相交部分
      - 求两曲面内部交线段的公共部分
      - **怎么有效判别两个自由曲面的交叉部分是难题之一**
      - **这个环节很耗时，布尔操作很耗时的原因之一**
  - 对每一有交表面进行面体分类
    - 对每一有交表面，沿完整交线进行剖分
    - 对剖分的每个面进行面体分类
  - 建立新实体的数据结构
    - 原则：尽可能重用原有的数据结构
    - 建立交线的数据结构，相应地修改交面的数据结构
    - 重建结果物体的面表，根据布尔运算符来选择面
    - 对于A-B，对属于B物体的面作反向操作（应该是为了方便and那一步）
- 问题
  - 求交耗时
  - 初始交点的确定，包括多交点的情况
  - 特殊情况处理比较困难
  - 难以确保有效性，因此要**尽量避免使用布尔运算**



### 局部操作

- 负操作negative
  - 将实体所有的有边界面的法向改为相反方向
  - 算法步骤
    - 改变面的法向
    - 改变所有半边的走向：改变半边的起点；改变下一条边的指针
- 对称映射
  - 通过对给定实体关于一个平面作反射变换得到一个新的实体，或者改变给定实体的形状
  - 算法步骤
    - 拓扑上：复制原实体，作负操作
    - 几何上：对相应的元素作对称变换
    - 对于以实体的一个面作对称面的情况，对重合元素作合并处理
- 倒角
  - 将物体的一个尖点或一条尖边，用一个小平面替代，消去一个尖角或尖边
  - 算法实现
    - 几何上：通过给定参数计算出点边面信息
    - 拓扑上：消去尖角：semv(), mef(), kef(), kev()
- 圆角
  - 将实体上的一个点或者一条边（一组边）用光滑的曲面替代，且保证新曲面与原点边的相邻曲面之间**光滑拼接**
  - 光滑拼接：一阶导连续
  - 算法实现
    - 理论方法：球的包络面
    - 使用方法：分别构造多张曲面拼接而成（如立方体的圆角，连带着边也圆角了，角就变成了构造三个四边曲面）
    - 难点：**难在如何保证光滑性**
- 粘合操作
  - 将两个表面贴合的实体“粘合”成一个新的实体
  - 算法实现
    - 修改贴合面的表示
      - 几何上：确定 (A-\*B) or (B-\*A) 作为新的几何边界
      - 拓扑上：将(A-\*B)与(B-\*A)的边界，分别作为两个面表示
    - 处理重合边的两个面表示
    - 建立新实体的面表
- 扭变 / 直接建模操作 / 同构建模
  - 对部分边面做操作，不改变拓扑结构
  - 直接对实体模型中的一个或一组边界元素进行**平移**或**旋转**变换来生成、变动实体模型

