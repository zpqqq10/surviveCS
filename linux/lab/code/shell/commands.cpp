// commands.cpp
// 张沛全 3190102214

#include"base.h"
#include"commands.h"

// 声明myshell.cpp中的变量
extern job* jobs;
extern int* jobnum;
extern int shmID;
extern std::vector<std::string> cmdlist; 

/* backup functions */
// 信号处理函数，处理SIGCHLD与SIGTSTP
void signal_handler(int signum, siginfo_t *siginfo, void *context){
    const int job_num = *jobnum; 
    int i, bgid = 0; 
    pid_t pid = siginfo->si_pid; 
    pid_t mainpid = jobs[0].pid; 
    if(signum == SIGCHLD && waitpid(-1, NULL, WNOHANG|WUNTRACED) && getpid() == mainpid){
        // 处理结束信号，一定要判断子进程的状态
        // 为什么判断getpid()的值：因为实际上的调用是创建了一个新的myshell进程，myshell进程又创建了一个sh进程，sh进程还要再创建一个进程来调用命令
        // 如果不判断是否为主进程收到信号，这个函数会被多次触发
        for(i=0; i<job_num; i++){
            if(jobs[i].type == BG){
                bgid++; 
            }
            if(pid == jobs[i].pid){
                break; 
            }
        }
        if(i<job_num){
            // 找到
            if(jobs[i].type == BG){
                if(jobs[i].status == RUNNING){
                    jobs[i].status = DONE; 
                    // std::cout << WHITE << "\n[" << bgid+1 << "]  DONE\t\t" << jobs[i].name << std::endl; 
                }
                else if(jobs[i].status == SUSPEND){
                    ; 
                }
                else{
                    removejob(pid);
                    ;  
                }
            }
            else{
                if(jobs[i].status == RUNNING){
                    jobs[i].status = DONE; 
                    jobs[i].type = BG; 
                }
            }
        }
    } 
    // 处理中断挂起 ^Z
    else if(signum == SIGTSTP && getpid() == mainpid){
        int lastFG = 0, id, bgid = 0; 
        std::string name;
        pid_t pid;  
        // 寻找该进程
        for(i=0; i<job_num; i++){
            if(jobs[i].type == BG){
                bgid++; 
            }
            else{
                if(jobs[i].name != "myshell"){
                    id = bgid + 1; 
                    lastFG = i; 
                    name.append(jobs[i].name); 
                    pid = jobs[i].pid; 
                    break; 
                }
            }
        }
            
        if(lastFG>0){
            // 找到了该进程
            std::cout << WHITE << "\n[" << id << "]  Stopped\t\t" << pid << "\t" << name << std::endl; 
            jobs[lastFG].type = BG; 
            jobs[lastFG].status = SUSPEND; 
            kill(pid, SIGSTOP); 
        }
    }
}

// 添加一个进程
job* addjob(pid_t pid, std::string &jobname, int type, int status){
    int job_num = *jobnum; 
    if(job_num == MAX_JOB){
        fprintf(stderr,  RED "myshell: Too many jobs\n"); 
        free_jobs(); 
        exit(1); 
    }
    jobs[job_num].pid = pid; 
    jobs[job_num].name = jobname; 
    // strcpy(jobs[job_num].name, jobname.c_str()); 
    jobs[job_num].type = type; 
    jobs[job_num].status = status;
    *jobnum = job_num + 1; 
    return &jobs[job_num];  
}

// 删除一个进程
void removejob(pid_t pid){
    int i, job_num = *jobnum; 
    // 在表中寻找该进程
    for(i=0; i<job_num; i++){
        if(pid == jobs[i].pid){
            break; 
        }
    }

    if(i < job_num - 1){
        // 找到
        for( ; i<job_num-1; i++){
            jobs[i].pid = jobs[i+1].pid; 
            jobs[i].name = jobs[i+1].name;  
            jobs[i].type = jobs[i+1].type; 
            jobs[i].status = jobs[i+1].status; 
        }
    }
    // 修改信息
    jobs[i].pid = -1; 
    *jobnum = job_num - 1; 
}

// 初始化进程表
void init_jobs(){
    // 创建共享内存，返回值为-1则创建失败
    if((shmID = shmget((key_t)4399, sizeof(job)*MAX_JOB+sizeof(int), 0666|IPC_CREAT)) == -1){
        fprintf(stderr,  RED "myshell: Fail to create shared memory\n"); 
        exit(1); 
    }
    // 连接共享内存
    void *mem = shmat(shmID, 0, 0); 
    if(mem == (void *)-1){
        fprintf(stderr,  RED "myshell: Fail to connect to shared memory\n"); 
        exit(1); 
    }
    else{
        jobs = (job*)mem; 
    }
    
    // 初始化
    for(int i=0; i<MAX_JOB; i++){
        jobs[i].pid = -1; 
    }

    // 把当前进程myshell加进去
    std::string myshell = "myshell"; 
    jobnum = (int *)((char *)mem + sizeof(jobs)*MAX_JOB); 
    *jobnum = 0; 
    addjob(getpid(), myshell, FG, RUNNING); 
}

// 释放进程表
void free_jobs(){
    // 断开连接
    if(shmdt((void *)jobs) == -1){
        fprintf(stderr,  RED "myshell: Fail to detach shared memory segment\n"); 
        exit(1); 
    }
    // 释放共享内存
    if(shmctl(shmID, IPC_RMID, 0) == -1){
        fprintf(stderr,  RED "myshell: Fail to free shared memory segment\n"); 
        exit(1); 
    }
}

// 判断一个字符串是否为纯数字
int is_digit(const std::string &str){
    int length = str.length();
    for(int i=0; i<length; i++){
        if(str[i]<'0' || str[i]>'9'){
            // 发现非数字则返回0
            return 0; 
        }
    } 
    return 1; 
}

// 将相对路径转化为绝对路径
void rtoa_path(std::string &dir, const std::string &input){
    dir = input; 
    if(dir[0] == '~'){
        // 主目录
        extern std::string home; 
        dir.replace(0, 1, home); 
    }
    else if(dir.substr(0, 2) == ".."){
        // 父目录
        dir = getenv("PWD"); 
        if(dir.rfind('/') == 0){
            if(dir.length() == 0){
                // 已经到达根目录
                dir = dir; 
            }
            else {
                dir = dir.substr(0, 1); 
            }
        }
        else {
            dir = dir.substr(0, dir.rfind('/')); 
        }
        if(input.length() > 2){
            dir.append(input.substr(2, input.length()-2)); 
        }
    }
    else if(dir[0] == '.'){
        // 当前目录
        dir = getenv("PWD"); 
        if(input.length() > 1){
            dir.append(input.substr(1, input.length()-1)); 
        }
    }
    else if(dir[0] != '/'){
        // 根目录
        dir = getenv("PWD");
        dir.append("/"); 
        dir.append(input);  
    }
}

// 打印一个文件的详细信息，参考了ls -l命令
void dir_l(const std::string &entry){
    struct stat entrystatus; 
    std::string path; 
    rtoa_path(path, entry); 
    stat(path.c_str(), &entrystatus); 
    // 判断文件类型
    std::string mask; 
    switch (entrystatus.st_mode & S_IFMT){
        case S_IFREG:
            // 普通文件
            mask.append("-"); 
            break;
        case S_IFDIR:
            // 目录文件
            mask.append("d"); 
            break;
        case S_IFIFO:
            // 管道文件
            mask.append("p"); 
            break;
        case S_IFLNK:
            // 软连接
            mask.append("l"); 
            break;
        case S_IFSOCK:
            // 套接字文件
            mask.append("s"); 
            break;
        case S_IFBLK:
            // 块设备文件
            mask.append("b"); 
            break;
        case S_IFCHR:
            // 字符设备文件
            mask.append("c"); 
            break;
        default:
            mask.append("-");
            break;
    }
    // 判断文件权限
    mask.append((entrystatus.st_mode & S_IRUSR) ? "r" : "-"); 
    mask.append((entrystatus.st_mode & S_IWUSR) ? "w" : "-"); 
    mask.append((entrystatus.st_mode & S_IXUSR) ? "x" : "-"); 
    mask.append((entrystatus.st_mode & S_IRGRP) ? "r" : "-"); 
    mask.append((entrystatus.st_mode & S_IWGRP) ? "w" : "-"); 
    mask.append((entrystatus.st_mode & S_IXGRP) ? "x" : "-"); 
    mask.append((entrystatus.st_mode & S_IROTH) ? "r" : "-"); 
    mask.append((entrystatus.st_mode & S_IWOTH) ? "w" : "-"); 
    mask.append((entrystatus.st_mode & S_IXOTH) ? "x" : "-"); 
    // 硬连接
    int nlink = entrystatus.st_nlink; 
    // 用户与所属组
    std::string user = getpwuid(entrystatus.st_uid)->pw_name; 
    std::string group = getgrgid(entrystatus.st_uid)->gr_name; 
    // 大小
    int size = (int)entrystatus.st_size; 
    // 修改时间
    std::string mo_time = ctime(&entrystatus.st_mtime);  
    mo_time.replace(mo_time.find('\n'), 1, ""); 

    std::cout << mask << " " << nlink << "\t\t" << user << "\t"; 
    std::cout << group << "\t" << size << "\t" << mo_time << " " << entry << std::endl; 
}

/* bg、cd 、clr、dir、echo 、exec 、exit 、fg 、help、jobs 、pwd 、set 、shift 、test 、time 、umask、unset */
void f_jobs(int index, int length){
    const int job_num = *jobnum; 
    if(length>1){
        fprintf(stderr,  RED "myshell: jobs: Too many arguments\n"); 
    }
    else {
        int bg_id = 0; 
        // 要删除的进程的表
        std::vector<pid_t> remove_list; 
        std::cout << "\tPID" << "\tstatus" << "\tname" << std::endl; 
        for (int i = 0; i < job_num; i++)
        {
            if(jobs[i].type == BG){
                std::cout << '[' << ++bg_id << "]\t" << jobs[i].pid << "\t"; 
                if(jobs[i].status == RUNNING){
                    std::cout << "RUNNING\t"; 
                }
                else if(jobs[i].status == SUSPEND){
                    std::cout << "SUSPEND\t"; 
                }
                else{
                    remove_list.push_back(jobs[i].pid); 
                    std::cout << "DONE\t"; 
                }
                std::cout << jobs[i].name << std::endl; 
            }
        }
        // 状态为DONE的进程，输出一次后删除
        for (int i = 0; i < remove_list.size(); i++){
            removejob(remove_list[i]); 
        }
    } 
}

void f_fg(int index, int length){
    const int job_num = *jobnum; 
    if(length == 1){
        fprintf(stderr,  RED "myshell: fg: Too few arguments\n");
    }
    else if(length > 2){
        fprintf(stderr,  RED "myshell: fg: Too many arguments\n");
    }
    else{
        if(!is_digit(cmdlist[index+1])){
            fprintf(stderr,  RED "myshell: fg: %s: Numeric pid required\n", cmdlist[index+1].c_str());
        }
        else{
            int i, ret; 
            pid_t target = atoi(cmdlist[index+1].c_str()); 
            // 寻找该进程
            for(i=0; i<job_num; i++){
                if(jobs[i].pid == target){
                    break; 
                }
            }
            if(i<job_num){
                // 找到了 
                if(jobs[i].type == BG){
                    std::cout << WHITE << jobs[i].name << std::endl; 
                    if(jobs[i].status == RUNNING){
                        // 正在后台运行
                        jobs[i].type = FG; 
                        waitpid(jobs[i].pid, &ret, 0); 
                    }
                    else if(jobs[i].status == SUSPEND){
                        // 正在后台挂起
                        jobs[i].type = FG; 
                        jobs[i].status = RUNNING; 
                        // 发出信号让进程继续运行
                        // 实际这里存的是myshell的pid，恢复时先继续myshell，再继续sh，最后继续命令
                        kill(jobs[i].pid, SIGCONT); 
                        kill(jobs[i].pid+1, SIGCONT); 
                        kill(jobs[i].pid+2, SIGCONT); 
                        waitpid(jobs[i].pid, &ret, 0); 
                    }
                    else{
                        // 已经完成
                        fprintf(stderr,  RED "myshell: fg: %d: Process already done\n", target);
                    }
                }
                else{
                    fprintf(stderr,  RED "myshell: fg: %d: Foreground process\n", target);
                }
            }
            else{
                fprintf(stderr,  RED "myshell: fg: %d: No such process\n", target);
            }
        }
    }
}

void f_bg(int index, int length){
    const int job_num = *jobnum; 
    if(length == 1){
        fprintf(stderr,  RED "myshell: bg: Too few arguments\n");
    }
    else if(length > 2){
        fprintf(stderr,  RED "myshell: bg: Too many arguments\n");
    }
    else{
        if(!is_digit(cmdlist[index+1])){
            fprintf(stderr,  RED "myshell: bg: %s: Numeric pid required\n", cmdlist[index+1].c_str());
        }
        else{
            int i, ret, bgid = 0; 
            pid_t target = atoi(cmdlist[index+1].c_str()); 
            // 寻找该进程
            for(i=0; i<job_num; i++){
                if(jobs[i].type == BG){
                    bgid++; 
                }
                if(jobs[i].pid == target){
                    break; 
                }
            }
            if(i<job_num){
                // 找到了 
                if(jobs[i].type == BG){
                    if(jobs[i].status == RUNNING){
                        // 正在后台运行
                        fprintf(stderr,  RED "myshell: bg: %d: Running process\n", target);
                    }
                    else if(jobs[i].status == SUSPEND){
                        // 正在后台挂起
                        std::cout << WHITE << '[' << bgid << "]\t" << jobs[i].pid; 
                        std::cout << "\tStopped\t\t" << jobs[i].name << std::endl; 
                        jobs[i].status = RUNNING; 
                        // 发出信号让进程继续运行
                        // 实际这里存的是myshell的pid，恢复时先继续myshell，再继续sh，最后继续命令
                        kill(jobs[i].pid, SIGCONT); 
                        kill(jobs[i].pid+1, SIGCONT); 
                        kill(jobs[i].pid+2, SIGCONT); 
                    }
                    else{
                        // 已经完成
                        fprintf(stderr,  RED "myshell: bg: %d: Process already done\n", target);
                    }
                }
                else{
                    fprintf(stderr,  RED "myshell: bg: %d: Foreground process\n", target);
                }
            }
            else{
                fprintf(stderr,  RED "myshell: bg: %d: No such process\n", target);
            }
        }
    }
}

void f_dir(int index, int length){
    DIR *dp; 
    struct dirent *entry;
    std::string directory; 

    if(length < 3){
        if(length == 1){
            directory = getenv("PWD"); 
        }
        else {
            if(cmdlist[index+1] == "-l"){
                // 参数中含有-l
                directory = getenv("PWD"); 
                dp = opendir(directory.c_str()); 
                while (entry = readdir(dp)){
                    if(std::string(entry->d_name)!="." && std::string(entry->d_name)!=".."){
                        // 输出详细信息
                        dir_l(std::string(entry->d_name));
                    }
                }
                return ;
            }
            else{
                // 输入的一个参数为一个路径
                directory = cmdlist[index+1]; 
            }
        }
        if(dp = opendir(directory.c_str())){
            // 目录存在且可以打开
            while (entry = readdir(dp)){
                if(std::string(entry->d_name)!="." && std::string(entry->d_name)!=".."){
                    std::cout << entry->d_name << "\t"; 
                }
            }
            std::cout << std::endl; 
            closedir(dp); 
        }
        else{
            fprintf(stderr, RED "myshell: dir: %s: No such directory or permission denied\n", cmdlist[index+1].c_str()); 
        }
    }
    else{
        // 多个参数
        // 检查是否输入了-l
        int lflag = 0; 
        for(int i=1; i<length; i++){
            if(cmdlist[index+i] == "-l"){
                lflag = 1; 
                break; 
            }
        }
        for (int i=1; i<length; i++){
            if(cmdlist[index+i] != "-l"){
                std::cout << cmdlist[index+i] << ":" << std::endl; 
                if(lflag){
                    // 输出详细信息
                    directory = cmdlist[index+i];
                    rtoa_path(directory, cmdlist[index+i]); 
                    if(!chdir(directory.c_str())){
                        // 目录存在且可以打开
                        // 需要设置PWD环境变量才可以读出对应目录下的文件信息，怀疑是权限问题
                        std::string pwd(getenv("PWD")); 
                        setenv("PWD", directory.c_str(), 1); 
                        dp = opendir(directory.c_str()); 
                        while (entry = readdir(dp)){
                            if(std::string(entry->d_name)!="." && std::string(entry->d_name)!=".."){
                                dir_l(std::string(entry->d_name));
                            }
                        }
                        std::cout << std::endl; 
                        closedir(dp); 
                        chdir(pwd.c_str()); 
                        setenv("PWD", pwd.c_str(), 1); 
                    }
                    else{
                        fprintf(stderr, RED "myshell: dir: %s: No such file or directory or permission denied\n", cmdlist[index+1].c_str()); 
                    }
                }
                else{
                    // 多个参数全为路径
                    directory = cmdlist[index+i]; 
                    if(dp = opendir(directory.c_str())){
                        // 目录存在且可以打开
                        while (entry = readdir(dp)){
                            if(std::string(entry->d_name)!="." && std::string(entry->d_name)!=".."){
                                std::cout << entry->d_name << "\t"; 
                            }
                        }
                        std::cout << std::endl; 
                        closedir(dp); 
                    }
                    else{
                        fprintf(stderr, RED "myshell: dir: %s: No such file or directory or permission denied\n", cmdlist[index+1].c_str()); 
                    }
                }
                if(i<length-1){
                    std::cout << std::endl; 
                }
            }
        }
    }
}

void f_set(int index, int length){
    if(length == 1){
        // 无参数，打印所有环境变量或者增加环境变量
        if((std::string::size_type)cmdlist[index].find('=') == std::string::npos){ 
            // 找不到等号，说明是打印所有环境变量
            extern char **environ; 
            for(int i=0; environ[i]; i++){
                std::cout << environ[i] << std::endl; 
            } 
        }
        else { 
            // 赋值或者创建变量
            std::string name(cmdlist[index], 0, cmdlist[index].find('=')); 
            std::string value(cmdlist[index], cmdlist[index].find('=')+1, cmdlist[index].length()-cmdlist[index].find('=')); 
            // 该环境变量不存在，则添加；存在则重新赋值
            setenv(name.c_str(), value.c_str(), 1); 
        }
    }
    else if(length == 2){
        // 打印特定环境变量的值
        if(!getenv(cmdlist[index+1].c_str())){
            // 该环境变量不存在
            fprintf(stderr, RED "myshell: set: Environment variable not found\n"); 
        }
        else {
            std::cout << getenv(cmdlist[index+1].c_str()) << std::endl; 
        }
    }
    else {
        fprintf(stderr, RED "myshell: set: Wrong number of arguments\n"); 
    }
}

void f_unset(int index, int length){
    if(length == 2){
        // 删除环境变量
        if(!getenv(cmdlist[index+1].c_str())){
            // 该环境变量不存在
            fprintf(stderr, RED "myshell: unset: Environment variable doesn't exist\n"); 
        } 
        else{
            // 删除
            unsetenv(cmdlist[index+1].c_str()); 
        }
    }
    else {
        fprintf(stderr, RED "myshell: unset: Wrong number of arguments\n"); 
    }
}

void f_umask(int index, int length){
    if(length == 1){
        // mask = 旧掩码
        mode_t mask = umask(0); 
        umask(mask); 
        fprintf(stdout, WHITE "%04o\n", mask); 
    }
    else if(length == 2){
        // 判断输入是否合法再改
        if(cmdlist[index+1].length() > 4){
            // 输入过长
            fprintf(stderr,  RED "myshell: umask: %s: Octal number out of range\n", cmdlist[index+1].c_str()); 
        }
        else{
            int illegal = 0, mask = 0; 
            for(int i=0; i<cmdlist[index+1].length(); i++){
                if(!(cmdlist[index+1][i]>='0' && cmdlist[index+1][i]<='8')){
                    // 输入了非法字符
                    illegal = 1; 
                    break; 
                }
                else{
                    // 将十进制处理成八进制
                    mask <<= 3; 
                    mask |= cmdlist[index+1][i]-'0'; 
                }
            }
            if(illegal){
                fprintf(stderr,  RED "myshell: umask: %s: Octal number out of range\n", cmdlist[index+1].c_str()); 
            }
            else{
                umask(mask); 
            }
        }
    }
    else{
        fprintf(stderr,  RED "myshell: umask: Too many arguments\n"); 
    }
}

void f_exec(int index, int length){
    extern void execute(int index, int length); 
    if(length == 1){
        fprintf(stderr,  RED "myshell: exec: Too few arguments\n");
    }
    else{
        // 递归调用执行命令的函数
        execute(index+1, length-1); 
        f_exit(0, 1); 
    }
}

void f_test(int index, int length){
    if(length < 4){
        fprintf(stderr, RED "myshell: test: Too few arguments\n");
    }
    else if(length > 4){
        fprintf(stderr, RED "myshell: test: Too many arguments\n");
    }
    else{
        std::string operation = cmdlist[index+2]; 
        std::string operandA = cmdlist[index+1]; 
        std::string operandB = cmdlist[index+3]; 
        // 同时判断操作符以及结果
        if(operation == "=" || operation == "!="){
            // 字符串比较
            int flag = (operation=="=" ? 1 : 0) ^ (operandA==operandB ? 1 : 0); 
            if(flag){
                std::cout << RED << "FALSE" << std::endl; 
            }
            else{
                std::cout << GREEN << "TRUE" << std::endl; 
            }
        }
        else if(operation == "-eq" || operation == "-ne" || operation == "-lt" || \
                operation == "-le" || operation == "-gt" || operation == "-ge"){
            // 整数比较
            if(!is_digit(operandA)){
                // 非整数
                fprintf(stderr, RED "myshell: test: %s: Numeric argument required\n", operandA.c_str());
            }
            else if(!is_digit(operandA)){
                // 非整数
                fprintf(stderr, RED "myshell: test: %s: Numeric argument required\n", operandB.c_str());
            }
            else if(operation == "-eq"){
                if(atoi(operandA.c_str()) == atoi(operandB.c_str())){
                    std::cout << GREEN << "TRUE" << std::endl; 
                }
                else{
                    std::cout << RED << "FALSE" << std::endl;  
                }
            }
            else if(operation == "-ne"){
                if(atoi(operandA.c_str()) != atoi(operandB.c_str())){
                    std::cout << GREEN << "TRUE" << std::endl; 
                }
                else{
                    std::cout << RED << "FALSE" << std::endl;  
                }
            }
            else if(operation == "-lt"){
                if(atoi(operandA.c_str()) < atoi(operandB.c_str())){
                    std::cout << GREEN << "TRUE" << std::endl; 
                }
                else{
                    std::cout << RED << "FALSE" << std::endl;  
                }
            }
            else if(operation == "-le"){
                if(atoi(operandA.c_str()) <= atoi(operandB.c_str())){
                    std::cout << GREEN << "TRUE" << std::endl; 
                }
                else{
                    std::cout << RED << "FALSE" << std::endl;  
                }
            }
            else if(operation == "-gt"){
                if(atoi(operandA.c_str()) > atoi(operandB.c_str())){
                    std::cout << GREEN << "TRUE" << std::endl; 
                }
                else{
                    std::cout << RED << "FALSE" << std::endl;  
                }
            }
            else {
                if(atoi(operandA.c_str()) >= atoi(operandB.c_str())){
                    std::cout << GREEN << "TRUE" << std::endl; 
                }
                else{
                    std::cout << RED << "FALSE" << std::endl;  
                }
            }
        }
        else{
            fprintf(stderr, RED "myshell: test: %s: Unknown operator\n", operation.c_str());
        }
    }
}

void f_shift(int index, int length){
    if(length <= 2){
        if(length == 1 || is_digit(cmdlist[index+1])){
            // 默认一位
            int shift; 
            if(length == 1){
                shift = 1; 
            }
            else{
                shift = atoi(cmdlist[index+1].c_str());
            }
            char inputbuf[128] = {0};
            std::cin.getline(inputbuf, 123);  
            // 处理输入
            std::istringstream inputbuffer(inputbuf);
            std::string tmp;  
            std::vector<std::string> input;
            while(inputbuffer >> tmp){
                input.push_back(tmp); 
            } 
            // 输出
            if(shift > input.size()){
                std::cout << std::endl; 
            }
            else{
                for(int i=shift; i<input.size(); i++){
                    std::cout << input[i] << " " ; 
                }
                std::cout << std::endl; 
            }
        }
        else{
            fprintf(stderr,  RED "myshell: shift: Numeric argument required\n");
        }
    }
    else{
        fprintf(stderr,  RED "myshell: shift: Too many arguments\n");
    }
}

void f_time(int index, int length){
    if(length>1){
        fprintf(stderr,  RED "myshell: time: Too many arguments\n"); 
    }
    else {
        time_t current, tmp; 
        const char *week[7] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}; 
        // 得到秒数
        time(&current); 
        // 将秒数转化为可读时间 
        std::string current_time = asctime(localtime(&current)); 
        current_time.replace(current_time.find("\n"), 1, " "); 
        // 得到格林威治时间
        tmp = mktime(gmtime(&current)); 
        // 最后一个输出的计算在计算时区
        std::cout << current_time << "UTC" << std::showpos << (current-tmp)/3600 << std::endl; 
        // 取消输出正负号
        std::cout.unsetf(std::ios::showpos); 
    }
}

void f_pwd(int index, int length){
    if(length>1){
        fprintf(stderr,  RED "myshell: pwd: Too many arguments\n"); 
    }
    else {
        // 获得环境变量的值并打印
        std::string path = getenv("PWD"); 
        std::cout << path << std::endl; 
    } 
}

void f_echo(int index, int length){
    for(int i=1; i<length; i++){
        std::cout << cmdlist[index+i] << " "; 
    }
    std::cout << std::endl; 
}

void f_cd(int index, int length){
    if(length == 1){
        // 无参数，显示当前目录
        std::string path = getenv("PWD");
        std::cout << path << std::endl; 
    }
    else if(length > 2){
        // 参数过多
        fprintf(stderr, RED "myshell: cd: Too many arguments\n"); 
    }
    else {
        std::string dir; 
        // 相对路径处理
        rtoa_path(dir, cmdlist[index+1]); 
        // 切换目录
        if(!chdir(dir.c_str())){
            // 切换目录成功
            setenv("PWD", dir.c_str(), 1); 
        }
        else{
            // 目录不存在
            fprintf(stderr, RED "myshell: cd: %s: No such file or directory or permission denied\n", cmdlist[index+1].c_str()); 
        }
    }
}

void f_exit(int index, int length){
    if(length>1){
        fprintf(stderr,  RED "myshell: exit: Too many arguments\n"); 
    }
    else {
        free_jobs(); 
        std::cout << "Goodbye" << std::endl; 
        exit(0); 
    } 
}

void f_clr(int index, int length){
    if(length>1){
        fprintf(stderr,  RED "myshell: clr: Too many arguments\n"); 
    }
    else {
        std::cout << CLEAR << std::endl; 
    } 
}

void f_system(int index, int length){
    // 调用system()来执行外部命令
    std::string cmd = cmdlist[index]; 
    for(int i=1; i<length; i++){
        cmd.append(" "); 
        cmd.append(cmdlist[index+i]); 
    }
    system(cmd.c_str()); 
}

void f_help(int index, int length){
    if(length>1){
        fprintf(stderr,  RED "myshell: help: Too many arguments\n"); 
    }
    else {
        std::cout << WHITE << std::endl; 
        std::cout << "----------------------myshell----------------------" << std::endl; 
        std::cout << "----------------developed by " << CYAN << "Cheung" << WHITE << "----------------" << std::endl; 
        std::cout << "本程序尽力还原了一部分shell的功能（具体命令可能不同），支持的内部命令及其用法如下：" << std::endl; 

        std::cout << "1. 变量赋值" << std::endl; 
        std::cout << "作用： 对环境变量重新赋值或者创建新的环境变量（等号前后不能有空格）" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： SCHOOL=zju" << std::endl; 
        std::cout << std::endl; 

        std::cout << "2. bg" << std::endl; 
        std::cout << "作用： 对环境变量重新赋值或者创建新的环境变量（等号前后不能有空格）" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： SCHOOL=zju" << std::endl; 
        std::cout << std::endl; 

        std::cout << "3. cd" << std::endl; 
        std::cout << "作用： 切换工作目录（支持..、.、~）" << std::endl; 
        std::cout << "参数： 无参数时显示当前工作目录，有一个参数时切换工作目录至参数目录下" << std::endl; 
        std::cout << "示例： cd ～" << std::endl; 
        std::cout << std::endl; 

        std::cout << "4. clr" << std::endl; 
        std::cout << "作用： 清空终端" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： clr" << std::endl; 
        std::cout << std::endl; 

        std::cout << "5. dir" << std::endl; 
        std::cout << "作用： 显示目录下的内容（支持..、.、~）" << std::endl; 
        std::cout << "参数： 无参数则显示当前目录下的内容，有参数则显示参数所指目录下的内容；指定参数为-l时输出详细信息，类似于ls -l" << std::endl; 
        std::cout << "示例： dir -l ~" << std::endl; 
        std::cout << std::endl; 

        std::cout << "6. echo" << std::endl; 
        std::cout << "作用： 显示命令后的内容" << std::endl; 
        std::cout << "参数： 无参数则显示空，有参数则显示命令后的内容" << std::endl; 
        std::cout << "示例： echo test" << std::endl; 
        std::cout << std::endl; 

        std::cout << "7. exec" << std::endl; 
        std::cout << "作用： 执行参数代表的命令替换当前进程" << std::endl; 
        std::cout << "参数： 参数即为要执行的命令，可以是内部命令也可以是外部命令" << std::endl; 
        std::cout << "示例： exec ls -l" << std::endl; 
        std::cout << std::endl; 

        std::cout << "8. exit" << std::endl; 
        std::cout << "作用： 退出myshell" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： exit" << std::endl; 
        std::cout << std::endl; 

        std::cout << "9. fg" << std::endl; 
        std::cout << "作用： 将参数指定的进程转为前台执行" << std::endl; 
        std::cout << "参数： 一个参数，指定进程的pid" << std::endl; 
        std::cout << "示例： fg 2466" << std::endl; 
        std::cout << std::endl; 

        std::cout << "10. help" << std::endl; 
        std::cout << "作用： 显示帮助" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： help" << std::endl; 
        std::cout << std::endl; 

        std::cout << "11. jobs" << std::endl; 
        std::cout << "作用： 显示所有的后台进程" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： jobs" << std::endl; 
        std::cout << std::endl; 

        std::cout << "12. pwd" << std::endl; 
        std::cout << "作用： 显示当前的工作目录" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： pwd" << std::endl; 
        std::cout << std::endl; 

        std::cout << "13. set" << std::endl; 
        std::cout << "作用： 显示环境变量（此命令功能与environ重合，因此没有单独写environ命令）" << std::endl; 
        std::cout << "参数： 无参数时显示所有环境变量及其值，一个参数时显示参数代表的环境变量的值" << std::endl; 
        std::cout << "示例： set SHELL" << std::endl; 
        std::cout << std::endl; 

        std::cout << "13. set" << std::endl; 
        std::cout << "作用： 显示环境变量（此命令功能与environ重合，因此没有单独写environ命令）；对环境变量赋值可以用等式完成" << std::endl; 
        std::cout << "参数： 无参数时显示所有环境变量及其值，一个参数时显示参数代表的环境变量的值" << std::endl; 
        std::cout << "示例： set SHELL" << std::endl; 
        std::cout << std::endl; 

        std::cout << "14. shift" << std::endl; 
        std::cout << "作用： 输入命令后从标准输入读取变量，将输入变量左移后输出" << std::endl; 
        std::cout << "参数： 无参数时默认左移1位，有参数时参数制定移动多少位" << std::endl; 
        std::cout << "示例： shift 2" << std::endl; 
        std::cout << std::endl; 

        std::cout << "15. test" << std::endl; 
        std::cout << "作用： 进行字符串或者整数的比较" << std::endl; 
        std::cout << "参数： 参数代表要进行比较的表达式" << std::endl; 
        std::cout << "示例： test zju = thu" << std::endl; 
        std::cout << "示例： test 123 -eq 321" << std::endl; 
        std::cout << std::endl; 

        std::cout << "16. time" << std::endl; 
        std::cout << "作用： 显示当前的日期、时间与时区" << std::endl; 
        std::cout << "参数： 无参数" << std::endl; 
        std::cout << "示例： time" << std::endl; 
        std::cout << std::endl; 

        std::cout << "17. umask" << std::endl; 
        std::cout << "作用： 显示掩码或者修改掩码" << std::endl; 
        std::cout << "参数： 无参数时显示掩码，有一个参数时修改掩码" << std::endl; 
        std::cout << "示例： umask 7777" << std::endl; 
        std::cout << std::endl; 

        std::cout << "18. unset" << std::endl; 
        std::cout << "作用： 删除环境变量" << std::endl; 
        std::cout << "参数： 有一个参数指定环境变量名" << std::endl; 
        std::cout << "示例： unset SCHOOL" << std::endl; 

        std::cout << "---------------------------------------------------" << std::endl; 
        std::cout << "本程序支持的其他功能如下：" << std::endl; 
        std::cout << "1. 执行外部命令" << std::endl; 
        std::cout << "作用： 除去上述提到的内部命令，本程序还可以执行shell的其余不同名指令，执行时会自动为其创建子进程" << std::endl; 
        std::cout << "示例： ls -l" << std::endl; 
        std::cout << std::endl; 

        std::cout << "2. 执行脚本文件" << std::endl; 
        std::cout << "作用： 通过命令行执行该程序时，可以通过参数指定程序将要执行的脚本文件" << std::endl; 
        std::cout << "示例： ./myshell test.sh" << std::endl; 
        std::cout << std::endl; 

        std::cout << "3. 重定向" << std::endl; 
        std::cout << "作用： 在myshell内输入命令时，支持进行标准输入、标准输出和标准错误重定向" << std::endl; 
        std::cout << "示例： grep \"zju\" < in" << std::endl; 
        std::cout << "示例： ls -l 1> out" << std::endl; 
        std::cout << "示例： ls -l 2> err" << std::endl; 
        std::cout << std::endl; 

        std::cout << "4. 管道" << std::endl; 
        std::cout << "作用： 在myshell内输入命令时，支持进行多层管道操作，如shell一般" << std::endl; 
        std::cout << "示例： ls -l | grep \"rwx\" | grep \"test\"" << std::endl; 
        std::cout << std::endl; 

        std::cout << "5. 后台执行" << std::endl; 
        std::cout << "作用： 在myshell内输入命令时，支持进行后台执行，在命令的最后输入&即可" << std::endl; 
        std::cout << "示例： sleep 5 &" << std::endl; 
        std::cout << std::endl; 

        std::cout << "6. 中断执行" << std::endl; 
        std::cout << "作用： 在myshell内外部命令执行时，支持进行中断，在命令执行时按下Ctrl+Z即可；此后可以通过bg或者fg命令继续执行" << std::endl; 
        std::cout << "示例： Ctrl+Z" << std::endl; 
        std::cout << CANCEL << std::endl; 
    } 
}