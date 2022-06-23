#! /usr/bin/bash
# palindrome.sh
# 张沛全 3190102214

# 检查传入参数的数量
if [ $# -ne 1 ]
then
    echo "The number of variabls is wrong!"
    exit 1
fi

origin=$1   # 取得原输入
str=${origin//[^a-zA-Z]/}   # 去除非字母
# echo $str
left=0
right=$[${#str}-1]  # 计算长度
# let "right--"   
while [ $left -lt $right ]; do
    if [ ${str:$left:1} != ${str:$right:1} ]; then  # 不是回文
        echo "It is NOT a palindrome!"
        exit 1
    fi
    let "left++"
    let "right--"
done
echo "It is a palindrome!"  # 能执行到这一步的一定是回文
exit 0