#! /usr/bin/bash
# dirsync.sh
# 张沛全 3190102214

dirsyn(){
    # 写一个递归的程序
    # 写的时候发现好像不能直接把两个文件名定义成变量，父进程的变量值居然是子进程的
    touch "/tmp/.source_files_$3"
    touch "/tmp/.target_files_$3"
    # 获取文件名并排序
    cd "$1"
    ls | sort >"/tmp/.source_files_$3"
    cd "$2"
    ls | sort >"/tmp/.target_files_$3"
    # 这一个循环处理应该添加到仓库里的文件
    for file in $(comm -23 "/tmp/.source_files_$3" "/tmp/.target_files_$3"); do
        if [ -d $1'/'$file ]
            then
                # 该文件是一个文件夹
                # echo "a directory"
                mkdir $2'/'$file
                # 既然该文件夹是新的，说明里面的内容也没有备份过，因此直接用cp命令
                dirsyn $1'/'$file $2'/'$file $(($3+1))
            else
                # echo "a file"
                cp -p $1'/'$file $2'/'$file
        fi
    done
    # 这一个循环处理应该从仓库里删除的文件
    for file in $(comm -13 "/tmp/.source_files_$3" "/tmp/.target_files_$3"); do
        # echo rm $2'/'$file
        rm -fr $2'/'$file
    done
    # 这一个循环处理应该双向同步的文件
    for file in $(comm -12 "/tmp/.source_files_$3" "/tmp/.target_files_$3"); do
        # 获取修改时间
        sourcetime=$(stat $1'/'$file -c %Y)
        targettime=$(stat $2'/'$file -c %Y)
        if [ -d $1'/'$file ]
            then
                # 源文件是一个目录
                if [ ! -d $2'/'$file ]
                    then
                        # 仓库中的对应文件不是目录，文件类型不一致时把仓库里面的更新掉
                        rm $2'/'$file
                        mkdir $2'/'$file
                        dirsyn $1'/'$file $2'/'$file $(($3+1))
                    elif [ $sourcetime -lt $targettime ]; then
                        # 更新源文件
                        dirsyn $2'/'$file $1'/'$file $(($3+1))
                    elif [ $sourcetime -gt $targettime ]; then
                        # 更新仓库文件
                        dirsyn $1'/'$file $2'/'$file $(($3+1))
                fi
            else
                # 源文件是一个文件
                if [ -d $2'/'$file ]
                    then
                        # 仓库中的对应文件是目录，文件类型不一致时把仓库里面的更新掉
                        rmdir $2'/'$file
                        cp -p $1'/'$file $2'/'$file
                    elif [ $sourcetime -lt $targettime ]; then
                        # 更新源目录
                        cp -p $2'/'$file $1'/'$file
                    elif [ $sourcetime -gt $targettime ]; then
                        # 更新仓库中的目录
                        cp -p $1'/'$file $2'/'$file
                fi
        fi
    done
    rm "/tmp/.source_files_$3"
    rm "/tmp/.target_files_$3"
}

# 检查传入参数的数量
if [ $# -ne 2 ]
then
    echo "The number of variabls is wrong!"
    exit 1
fi

# 检查输入的目录是否存在
if [ ! -d "$1" ]
then
    echo "The source directory does not exist!"
    exit 1
fi
if [ ! -e "$2" ]
then
    echo "The backup directory does not exist and is created!"
    mkdir $2
fi

# 获取路径
cpath=$(pwd)
cd $1
sourcepath=$(pwd)
cd $cpath
cd $2
targetpath=$(pwd)
cd $cpath
# 调用函数
dirsyn $sourcepath $targetpath 1
echo "Synchronization completes!"
exit 0

# bash dirsync.sh source/ backup/
