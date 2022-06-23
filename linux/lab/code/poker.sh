#! /usr/bin/bash
# poker.sh
# 张沛全 3190102214

# 初始化函数
init(){
    # 初始化牌
    for ((i=0;i<4;i++)); do
        for ((j=0;j<13;j++)); do
            cards[$((i*13+j))]="${size[$j]} ${rank[$i]}"
        done
    done
    # 初始化每个牌的大小权重，保存在order数组中，方便比较大小
    for ((i=0;i<13;i++)); do
        for ((j=0;j<4;j++)); do
            index="${size[$i]} ${rank[$j]}"
            order[$index]=$((i*4+j))
        done
    done
    score[0]=0
    score[1]=0
    score[2]=0
    score[3]=0
    id[0]="player0"
    id[1]="player1"
    id[2]="player2"
    id[3]="player3"
    # 玩家输入id
    for ((i=0;i<4;i++)); do
        if [ $i -eq 0 ]; then
            printf "You can enter the name for the %s player (default 'player%d') :" first 0
        elif [ $i -eq 1 ]; then
            printf "You can enter the name for the %s player (default 'player%d') :" second 1
        elif [ $i -eq 2 ]; then
            printf "You can enter the name for the %s player (default 'player%d') :" third 2
        else
            printf "You can enter the name for the %s player (default 'player%d') :" fourth 3
        fi
        read idinput
        if [[ "$idinput" ]]; then
            id[i]="$idinput"
        fi
    done
    # for ((i=0;i<13;i++)); do
    #     for ((j=0;j<4;j++)); do
    #         index="${size[$i]} ${rank[$j]}"
    #         echo "$index: ${order[$index]}"
    #     done
    # done
}

# 洗牌函数
shuffle(){
    for ((i=0;i<52;i++)); do
        # 生成随机数
        index=$(date +%N)
        index=$(((10#$index*48271+47)%52))
        x=${cards[i]}
        cards[$i]=${cards[$index]}
        cards[$index]=$x
    done
    # 发牌
    for ((i=0;i<13;i++)); do
        cards0[$i]=${cards[i]}
    done
    for ((i=0;i<13;i++)); do
        cards1[$i]=${cards[13+i]}
    done
    for ((i=0;i<13;i++)); do
        cards2[$i]=${cards[26+i]}
    done
    for ((i=0;i<13;i++)); do
        cards3[$i]=${cards[39+i]}
    done
}

# 打印玩家手头的牌
display(){
    # 打印四个玩家拥有的牌
    if [ $# -eq 0 ]; then
        echo "--------Now each player has--------"
        echo "- ${id[0]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards0[$i]} ]]; then
                echo -n "${cards0[$i]}   "
            fi
        done
        echo ""
        echo "- ${id[1]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards1[$i]} ]]; then
                echo -n "${cards1[$i]}   "
            fi
        done
        echo ""
        echo "- ${id[2]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards2[$i]} ]]; then
                echo -n "${cards2[$i]}   "
            fi
        done
        echo ""
        echo "- ${id[3]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards3[$i]} ]]; then
                echo -n "${cards3[$i]}   "
            fi
        done
        echo ""
        echo "--------done--------"
    elif [ $1 -eq 0 ]; then
        echo "- ${id[0]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards0[$i]} ]]; then
                echo -n "${cards0[$i]}   "
            fi
        done
        echo ""
    elif [ $1 -eq 1 ]; then
        echo "- ${id[1]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards1[$i]} ]]; then
                echo -n "${cards1[$i]}   "
            fi
        done
        echo ""
    elif [ $1 -eq 2 ]; then
        echo "- ${id[2]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards2[$i]} ]]; then
                echo -n "${cards2[$i]}   "
            fi
        done
        echo ""
    elif [ $1 -eq 3 ]; then
        echo "- ${id[3]}: "
        for ((i=0;i<13;i++)); do
            if [[ ${cards3[$i]} ]]; then
                echo -n "${cards3[$i]}   "
            fi
        done
        echo ""
    fi
    # sleep 10s
}

# 用于比较两个牌的大小，前者大则返回1
cmp(){
    if [ ${order[$1]} -ge ${order[$2]} ]; then
        return 1
    else
        return 0
    fi
}

# 每个玩家出牌的函数，输入参数为玩家的编号
play(){
    echo "It's ${id[$1]}'s turn"
    # 先展示有什么牌
    display $1
    # 出牌
    while [ true ]; do
        # 获取玩家输入
        echo -n "Please enter the card you want to play: "
        read card2play
        if [ $1 -eq 0 ]; then
            # card2play="${cards0[$k]}"
            for ((i=0;i<13;i++)); do
                if [[ ${cards0[$i]} = $card2play ]]; then
                    pool[0]=${cards0[$i]}
                    unset cards0[$i]
                    clear
                    return 0
                fi
            done
            echo "You cannot play this card! Please enter again! "
        elif [ $1 -eq 1 ]; then
            # card2play="${cards1[$k]}"
            for ((i=0;i<13;i++)); do
                if [[ ${cards1[i]} = $card2play ]]; then
                    pool[1]=${cards1[i]}
                    unset cards1[$i]
                    clear
                    return 0
                fi
            done
            echo "You cannot play this card! Please enter again! "
        elif [ $1 -eq 2 ]; then
            # card2play="${cards2[$k]}"
            for ((i=0;i<13;i++)); do
                if [[ ${cards2[i]} = $card2play ]]; then
                    pool[2]=${cards2[i]}
                    unset cards2[$i]
                    clear
                    return 0
                fi
            done
            echo "You cannot play this card! Please enter again! "
        elif [ $1 -eq 3 ]; then
            # card2play="${cards3[$k]}"
            for ((i=0;i<13;i++)); do
                if [[ ${cards3[i]} = $card2play ]]; then
                    pool[3]=${cards3[i]}
                    unset cards3[$i]
                    clear
                    return 0
                fi
            done
            echo "You cannot play this card! Please enter again! "
        fi
    done
}

# 对于每一张牌，与其后面的牌比较一次，大于则计一分，这样则可以利用下标来记录总得分
judge(){
    # 计分
    for ((i=0;i<3;i++)); do
        for ((j=i+1;j<4;j++)); do
            cmp "${pool[$i]}" "${pool[$j]}"
            if [ $? -eq 1 ]; then
                let "score[$i]+=2"
            else 
                let "score[$j]+=2"
            fi
        done
    done
}


#############主函数#############
# 检查传入参数的数量
if [ $# -eq 1 ]; then
    # echo "$1"
    if [ $1 = "--help" ]; then
        echo "--------This is a game developed by zpq--------"
        echo "Rules: "
        echo "1. The four palyers will be distributed 13 cards respectively"
        echo "2. In each round, each player plays a card and earns a score of 6, 4, 2 or 0 according to the order of the four cards"
        echo "3. The order is determined by: A>K>Q>J>10>9>8>7>6>5>4>3>2 and Spade>Heart>Club>Diamond"
        echo "4. After all the cards are played, the player with the highest score wins"
        exit 0
    else
        echo "Illegal varibale!"
        exit 1
    fi
elif [ $# -ne 0 ]; then
    echo "The number of variabls is wrong!"
    exit 1
fi

# 打印信息
echo "Welcome to A Comparison Game!"
# 声明
declare -a cards
declare -a cards0
declare -a cards1
declare -a cards2
declare -a cards3
declare -a pool
declare -a score
declare -a id
declare -A order
# 考虑加入自定义玩家名
# 初始化牌的花色与大小
rank=("Diamond" "Club" "Heart" "Spade")
size=(2 3 4 5 6 7 8 9 10 J Q K A)
init
shuffle
# 出牌13轮
for ((k=0;k<13;k++)); do
    index=$(date +%N)
    index=$(((10#$index*48271+47)%52/13))
    play $index
    index=$((($index+1)%4))
    play $index
    index=$((($index+1)%4))
    play $index
    index=$((($index+1)%4))
    play $index
    index=$((($index+1)%4))
    judge
    echo "--------Score--------"
    echo "${id[0]}: ${score[0]}"
    echo "${id[1]}: ${score[1]}"
    echo "${id[2]}: ${score[2]}"
    echo "${id[3]}: ${score[3]}"
    echo "---------------------"
    sleep 3s
    clear
done
# echo "0: ${score[0]}"
# echo "1: ${score[1]}"
# echo "2: ${score[2]}"
# echo "3: ${score[3]}"
# 获取结果并输出
if [ ${score[0]} -gt ${score[1]} ] && [ ${score[0]} -gt ${score[2]} ] && [ ${score[0]} -gt ${score[3]} ]; then
    echo "${id[0]} wins!!"
elif [ ${score[1]} -gt ${score[0]} ] && [ ${score[1]} -gt ${score[2]} ] && [ ${score[1]} -gt ${score[3]} ]; then
    echo "${id[1]} wins!!"
elif [ ${score[2]} -gt ${score[0]} ] && [ ${score[2]} -gt ${score[1]} ] && [ ${score[2]} -gt ${score[3]} ]; then
    echo "${id[2]} wins!!"
elif [ ${score[3]} -gt ${score[0]} ] && [ ${score[3]} -gt ${score[2]} ] && [ ${score[3]} -gt ${score[2]} ]; then
    echo "${id[3]} wins!!"
else 
    echo "There is no winners!!"
fi
exit 0