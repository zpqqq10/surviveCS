## 连接

- 命令行

  - ```bash
    # 连接服务器
    sshpass -p "xxxxx" ssh -p xxxx xx@xxx.xxx.xxx.xxx
    ```

- vscode

  - 安装`Remote - SSH`插件，左下角绿色icon点击后/左侧连接到远程服务器点击后，选择connect to server

  - 可以在本地的config文件，配置要连接的服务器的信息

  - ```
    Host 1080
        HostName xxx.xxx.xxx.xxx
        User xx
        Port 20022
    
    Host 408-v100
        HostName xxx.xxx.xxx.xxx
        User xx
        Port 10022
    ```

- 将本机公钥加入服务器授权/免密码登录（windows）

  - ```bash
    # 修改/etc/ssh/sshd_config的RSAAuthentication和PubkeyAuthentication，然后sudo重启ssh服务
    type id_rsa.pub | ssh -p 10022 xx@xxx.xxx.xxx.xxx "cat >> .ssh/authorized_keys"
    sudo systemctl restart sshd
    ```



## 服务器使用

- root/sudo密码：即`sshpass`使用的密码

  - windows没有`sshpass`，可以使用`ssh`之后再输入密码

- 常用命令

  - ```bash
    # 查看当前目前下每个文件的大小
    du -sh ./*
    # 查看当前磁盘空间使用情况
    df -hl ~
    # scp传文件
    scp -P 10022 .\cudnn-11.3-linux-x64-v8.2.1.32.tgz xx@xxx.xxx.xxx.xxx:~/REFNeRF/
    # 监视显卡状态
    watch -n 1 nvidia-smi
    # 多版本cuda管理 或update-alternatives
    cd /usr/local
    sudo rm -rf cuda
    sudo ln -s /usr/local/cuda-11.2 /usr/local/cuda
    # tfboard
    ssh -L 16006:127.0.0.1:6006 xx@xxx.xxx.xxx.xxx -p 10022
    http://localhost:16006/
    # 让命令脱离终端运行，并将输出输出到log.txt中
    nohup python run.py > log.txt 2>&1 &
    ```

- 跑项目要为项目创建虚拟环境

  - [Anaconda-- conda 创建、激活、退出、删除虚拟环境_hejp_123的博客-CSDN博客_conda删除虚拟环境](https://blog.csdn.net/hejp_123/article/details/92151293)

- 指定使用哪张显卡，在命令行或者脚本输入`CUDA_VISIBLE_DEVICES=0,1,2,3`（卡的数量最好是2的n次幂）

- 多版本管理工具[Linux命令之update-alternatives - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/20797436)，可以用来管理gcc、java、cuda等工具的版本（python的版本管理已经通过conda/miniconda实现了）



