// commands.h
// 张沛全 3190102214

#ifndef COMMANDS_H
#define COMMANDS_H

#include<iostream>
#include<sstream>
#include<unistd.h>
#include<stdlib.h>
#include<time.h>
#include<cstring>
#include<vector>
#include<dirent.h>
#include<sys/stat.h>
#include<sys/shm.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<pwd.h>
#include<grp.h>
#include"base.h"

// 进程信息结构体
typedef struct job
{
    pid_t pid; 
    std::string name; 
    int type; 
    int status; 
}job;

/* backup functions */
// 信号处理函数，处理SIGCHLD与SIGTSTP
void signal_handler(int signum, siginfo_t *siginfo, void *context); 
// 添加一个进程
job* addjob(pid_t pid, std::string &jobname, int type, int status); 
// 删除一个进程
void removejob(pid_t pid); 
// 初始化进程表
void init_jobs(); 
// 释放进程表
void free_jobs(); 
// 判断一个字符串是否为纯数字
int is_digit(const std::string &str); 
// 将相对路径转化为绝对路径
void rtoa_path(std::string &dir, const std::string &input); 
// 打印一个文件的详细信息，参考了ls -l命令
void dir_l(const std::string &entry); 
/* built-in commands */
void f_jobs(int index, int length);
void f_fg(int index, int length);
void f_bg(int index, int length);
void f_dir(int index, int length); 
void f_set(int index, int length);
void f_unset(int index, int length);
void f_umask(int index, int length);
void f_exec(int index, int length);
void f_test(int index, int length);
void f_shift(int index, int length);
void f_time(int index, int length);
void f_pwd(int index, int length);
void f_echo(int index, int length);
void f_cd(int index, int length);
void f_exit(int index, int length);
void f_clr(int index, int length);
void f_system(int index, int length);
void f_help(int index, int length);
#endif