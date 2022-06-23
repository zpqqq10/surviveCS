// myshell.h
// 张沛全 3190102214

#ifndef MYSHELL_H
#define MYSHELL_H

#include<iostream>
#include<sstream>
#include<string>
#include<unistd.h>
#include<stdlib.h>
#include<algorithm>
#include<vector>
#include<pwd.h>
#include<string.h>
#include<sys/utsname.h>
#include<sys/wait.h>
#include<signal.h>
#include<stddef.h>
#include"base.h"

// 打印提示信息
void showprompt(); 
// 翻译输入的命令并选择执行
int interpreter(char *cmd_char); 
// 初始化函数
void init(); 
// 执行内部命令并返回0，当命令为外部命令时返回-1
int execute_builtin(int index, int length); 
// 执行命令
void execute(int index, int length); 
// 递归执行带有管道的命令
void executepipe(int flag, std::vector<std::pair<int, int>>&cmdinfo, int level);
#endif