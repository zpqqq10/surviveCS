// base.h
// 张沛全 3190102214

#ifndef BASE_H
#define BASE_H

// 颜色 特殊值 命令的标志位
#define GOON 0
#define LOGOUT 1
#define FG 0
#define BG 1
#define RUNNING 0
#define SUSPEND 1
#define DONE 2
#define MAX_JOB 128
#define IN_RD 1
#define OUT_RD 2
#define OUT_RD_APP 4
#define ERR_RD 8
#define ERR_RD_APP 16
#define IS_PIPE 32
#define IS_BG 64
#define CANCEL "\e[0m"
#define RED "\e[1;31m"
#define GREEN "\e[0;32m"
#define YELLOW "\e[1;33m"
#define BLUE "\e[1;34m"
#define PURPLE "\e[1;35m"
#define CYAN "\e[1;36m"
#define WHITE "\e[1;37m"
#define CLEAR "\e[1;1H\e[2J"


#endif