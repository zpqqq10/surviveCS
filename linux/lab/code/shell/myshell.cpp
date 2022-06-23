// myshell.cpp
// 张沛全 3190102214

#include"myshell.h"
#include"commands.h"

// 用户名 域名 主目录路径
std::string username, hostname, home; 
// 翻译好的命令
std::vector<std::string> cmdlist; 
// 进程表的地址、数量以及共享内存ID
job* jobs;
int* jobnum;
int shmID;
// 输入命令的标志位
int flag = 0; 
// 信号处理函数结构体
static struct sigaction siga; 

// 打印提示信息
void showprompt(){
    std::string path = getenv("PWD"); 
    if(path.find(home) == 0){
        path = path.replace(path.find(home), home.length(), "~"); 
    } 
    std::cout << YELLOW << username << "@" << hostname << WHITE << ':' << CYAN << path << WHITE << "$ " << CANCEL; 
    return ;
}

// 翻译输入的命令并选择执行
int interpreter(char *cmd_char){
    std::istringstream cmd(cmd_char);
    std::string tmp;  

    // 忽略掉多余的空格
    while(cmd >> tmp){
        cmdlist.push_back(tmp); 
    }

    // interpret
    int cmdlist_length = cmdlist.size(), cmdindex = 0, cmdlength = 0; 
    std::vector<std::pair<int, int>>cmdinfo; 
    for(int i=0; i<cmdlist_length; i++){
        if(cmdlist[i] == "<"){
            // 输入重定向
            flag |= IN_RD; 
            i++; 
            if(!freopen(cmdlist[i].c_str(), "r", stdin)){
                fprintf(stderr, RED "myshell: stdin: No such file\n"); 
                flag = 0; 
                cmdlist.clear(); 
                return -1; 
            }
            if(cmdlength){
                // 保存单个命令的起始下标与命令长度
                cmdinfo.push_back(std::make_pair(cmdindex, cmdlength)); 
                cmdindex = i+1; 
                cmdlength = 0; 
            }
        }
        else if(cmdlist[i] == "1>" || cmdlist[i] == ">"){
            // 输出重定向
            flag |= OUT_RD; 
            i++; 
            freopen(cmdlist[i].c_str(), "w+", stdout); 
            if(cmdlength){
                // 保存单个命令的起始下标与命令长度
                cmdinfo.push_back(std::make_pair(cmdindex, cmdlength)); 
                cmdindex = i+1; 
                cmdlength = 0; 
            } 
        }
        else if(cmdlist[i] == "1>>" || cmdlist[i] == ">>"){
            // 输出追加重定向
            flag |= OUT_RD_APP; 
            i++; 
            freopen(cmdlist[i].c_str(), "a+", stdout);
            if(cmdlength){
                // 保存单个命令的起始下标与命令长度
                cmdinfo.push_back(std::make_pair(cmdindex, cmdlength)); 
                cmdindex = i+1; 
                cmdlength = 0; 
            }
        }
        else if(cmdlist[i] == "2>"){
            // 错误重定向
            flag |= ERR_RD; 
            i++; 
            freopen(cmdlist[i].c_str(), "w+", stderr); 
            if(cmdlength){
                // 保存单个命令的起始下标与命令长度
                cmdinfo.push_back(std::make_pair(cmdindex, cmdlength)); 
                cmdindex = i+1; 
                cmdlength = 0; 
            }
        }
        else if(cmdlist[i] == "2>>"){
            // 错误追加重定向
            flag |= ERR_RD_APP; 
            i++; 
            freopen(cmdlist[i].c_str(), "a+", stderr);
            if(cmdlength){
                // 保存单个命令的起始下标与命令长度
                cmdinfo.push_back(std::make_pair(cmdindex, cmdlength)); 
                cmdindex = i+1; 
                cmdlength = 0; 
            }
        }
        else if(cmdlist[i] == "|"){
            // 管道操作
            flag |= IS_PIPE; 
            if(cmdlength){
                cmdinfo.push_back(std::make_pair(cmdindex, cmdlength)); 
                cmdindex = i+1; 
                cmdlength = 0; 
            }
        }
        else if(i == cmdlist_length-1 && cmdlist[i] == "&"){
            // 后台执行
            flag |= IS_BG; 
        }
        else{
            cmdlength++; 
        }
        // 翻译到最后，要把未记录的单个命令的信息记录下来
        if(i == cmdlist_length - 1 && cmdlength){
            cmdinfo.push_back(std::make_pair(cmdindex, cmdlength));
        }
    }
    // 执行
    if(flag & IS_PIPE){
        // 有管道
        executepipe(flag, cmdinfo, 0);
    }
    else{
        // 无管道
        execute(cmdinfo[0].first, cmdinfo[0].second); 
    }
    // 还原
    if(flag & IN_RD){
        fclose(stdin); 
        std::cin.clear(); 
        std::cin.sync(); 
        freopen("/dev/tty", "r", stdin);  
    }
    if(flag & OUT_RD || flag & OUT_RD_APP){
        fclose(stdout); 
        freopen("/dev/tty", "w", stdout); 
    }
    if(flag & ERR_RD || flag & ERR_RD_APP){
        fclose(stderr); 
        freopen("/dev/tty", "w", stderr); 
    }
    flag = 0; 
    cmdlist.clear(); 
    return 0;
}

// 执行内部命令并返回0，当命令为外部命令时返回-1
int execute_builtin(int index, int length){
    if(cmdlist[index] == "bg"){
        f_bg(index, length); 
    }
    else if(cmdlist[index] == "cd"){
        f_cd(index, length); 
    }
    else if(cmdlist[index] == "clr"){
        f_clr(index, length); 
    }
    else if(cmdlist[index] == "dir"){
        f_dir(index, length); 
    }
    else if(cmdlist[index] == "echo"){
        f_echo(index, length); 
    }
    else if(cmdlist[index] == "exec"){
        f_exec(index, length); 
    }
    else if(cmdlist[index] == "exit"){
        f_exit(index, length); 
    }
    else if(cmdlist[index] == "fg"){
        f_fg(index, length); 
    }
    else if(cmdlist[index] == "help"){
        f_help(index, length); 
    }
    else if(cmdlist[index] == "jobs"){
        f_jobs(index,length); 
    }
    else if(cmdlist[index] == "pwd"){
        f_pwd(index, length); 
    }
    else if(cmdlist[index] == "set" || (std::string::size_type)cmdlist[index].find('=') != std::string::npos){
        f_set(index, length); 
    }
    else if(cmdlist[index] == "shift"){
        f_shift(index, length); 
    }
    else if(cmdlist[index] == "test"){
        f_test(index, length); 
    }
    else if(cmdlist[index] == "time"){
        f_time(index, length); 
    }
    else if(cmdlist[index] == "umask"){
        f_umask(index, length); 
    }
    else if(cmdlist[index] == "unset"){
        f_unset(index, length); 
    }
    else{
        return -1;
    }
    return 0; 
}

// 执行命令
void execute(int index, int length){
    // 无管道
    if(execute_builtin(index, length)){
        // 处理外部命令
        pid_t pid = fork(); 
        if(pid < 0){
            // 出错
            fprintf(stderr, RED "myshell: fail to create a child process\n"); 
            return ;
        }
        else if(!pid){
            // 子进程
            // 添加环境变量
            setenv("PARENT", "/home/cheung/Desktop/code/myshell", 1); 
            // 执行外部命令
            f_system(index, length); 
            exit(0); 
        }
        else{
            // 主进程
            std::string jobname = cmdlist[index]; 
            for(int i=1; i<length; i++){
                jobname.append(" "); 
                jobname.append(cmdlist[index+i]); 
            }
            if(flag & IS_BG){
                // 后台进程
                addjob(pid, jobname, BG, RUNNING);
                // kill(pid, SIGSTOP);  
                // 不等待
                waitpid(pid, NULL, WNOHANG); 
                const int job_num = *jobnum; 
                int bgid = 0; 
                for(int i=0; i<job_num; i++){
                    if(jobs[i].type == BG){
                        bgid++; 
                    }
                }
                std::cout << WHITE << '[' << bgid << "] " << pid << CANCEL << std::endl; 
            }
            else{
                addjob(pid, jobname, FG, RUNNING); 
                // 等待
                waitpid(pid, NULL, WUNTRACED); 
            }
        }
    }
} 

// 递归执行带有管道的命令
void executepipe(int flag, std::vector<std::pair<int, int>>&cmdinfo, int level){
    // 最后一个单个命令，不再需要创建管道
    if(level == cmdinfo.size()-1){
        if(execute_builtin(cmdinfo[level].first, cmdinfo[level].second)){
            f_system(cmdinfo[level].first, cmdinfo[level].second); 
        }
        return ;
    }
    int pipeFD[2];

    // 创建管道
    if(pipe(pipeFD) < 0){
        fprintf(stderr, RED "myshell: Fail to create pipes\n"); 
        return ; 
    }

    pid_t pid = fork(); 
    if(pid < 0){
        // 出错
        fprintf(stderr, RED "myshell: fail to create a child process\n"); 
        return ;
    }
    else if(!pid){
        // 子进程，第一个子进程向管道输出数据，重定向标准输出
        close(pipeFD[0]);
        dup2(pipeFD[1], 1); 
        close(pipeFD[1]);  
        if(execute_builtin(cmdinfo[level].first, cmdinfo[level].second)){
            f_system(cmdinfo[level].first, cmdinfo[level].second); 
        }
        exit(0); 
    }
    else{
        // 主进程
        int status; 
        waitpid(pid, &status, 0); 
        // 从管道读取数据，重定向标准输入
        close(pipeFD[1]);
        dup2(pipeFD[0], 0); 
        close(pipeFD[0]); 
        // 递归执行 
        executepipe(flag, cmdinfo, level+1); 
        // 恢复标准输入
        std::cin.clear(); 
        std::cin.sync(); 
        freopen("/dev/tty", "r", stdin);  
    }

    return ; 
}

// 初始化函数
void init(){
    // 初始化部分环境变量
    username = getenv("LOGNAME"); 
    home = getenv("HOME"); 
    struct utsname tmp;
    uname(&tmp); 
    hostname = tmp.nodename; 
    setenv("shell", "/home/cheung/Desktop/code/myshell", 1); 
    // 初始化进程表
    init_jobs(); 
    // 初始化信号处理函数
    siga.sa_sigaction = signal_handler; 
    siga.sa_flags |= SA_RESTART; 
    siga.sa_flags |= SA_SIGINFO; 
    sigemptyset(&siga.sa_mask); 
    sigaction(SIGCHLD, &siga, NULL); 
    sigaction(SIGTSTP, &siga, NULL); 
    sigaction(SIGSTOP, &siga, NULL); 
}

int main(int argc, char **argv){
    init(); 
    while(true){
        if(argc == 1){
            char cmd[64]; 
            showprompt(); 
            // std::cin.getline(cmd, 64); 
            if(fgets(cmd, 63, stdin))
            {
                interpreter(cmd);  
            } 
            std::cin.clear(); 
            std::cin.sync(); 
        }
        else{
            // 执行外部文件
            FILE *fp; 
            char cmd[64]; 
            // 打开文件
            if(!(fp = fopen(argv[1], "r"))){
                fprintf(stderr, RED "myshell: %s: Fail to open the file\n", argv[1]); 
                free_jobs(); 
                exit(1); 
            }
            while (fgets(cmd, 63, fp))
            {
                interpreter(cmd);  
            }
            fclose(fp); 
            free_jobs(); 
            exit(0); 
        }
        
    }
    return 0; 
}