#! /usr/bin/bash
# stat.sh
# 张沛全 3190102214

# 检查传入参数的数量
if [ $# -ne 1 ]
then
    echo "The number of variabls is wrong!"
    exit 1
fi

# 检查输入的目录是否存在
if [ ! -d "$1" ]
then
    echo "The directory does not exist!"
    exit 1
fi

# 初始化数据
rf=0
df=0
xf=0
size=0
# 跳至目标目录下，方便进行遍历，同时也支持输入相对路径和绝对路径
cd $1
for filee in `ls $1`
do
echo $filee
if [ -f "$filee" ]; then    # 普通文件
    rf=`expr $rf + 1`
    info=`wc -c $filee` # 得到大小
    info=(${info[@]})
    size=`expr $size + ${info[0]}`
fi
if [ -d "$filee" ]; then    # 目录文件
    df=`expr $df + 1`
fi
if [ -f "$filee" ] && [ -x "$filee" ]; then # 可执行文件
    xf=`expr $xf + 1`
fi
done
echo "regular files:$rf"
echo "directories:$df"
echo "executable files:$xf"
echo "size of regular files:$size"
exit 0