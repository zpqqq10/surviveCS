# 基本配置

```bash
$ lscpu
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  24
  On-line CPU(s) list:   0-23
Vendor ID:               GenuineIntel
  Model name:            12th Gen Intel(R) Core(TM) i9-12900KF
    CPU family:          6
    Model:               151
    Thread(s) per core:  2
    Core(s) per socket:  16
    Socket(s):           1
    Stepping:            2
    CPU max MHz:         5200.0000
    CPU min MHz:         800.0000
    BogoMIPS:            6374.40
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fx
                         sr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts re
                         p_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor
                         ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_dea
                         dline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault invpcid_single ssbd
                          ibrs ibpb stibp ibrs_enhanced tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust
                          bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb intel_pt sha_ni xsaveopt xsav
                         ec xgetbv1 xsaves split_lock_detect avx_vnni dtherm ida arat pln pts hwp hwp_notify hwp_act_win
                         dow hwp_epp hwp_pkg_req hfi umip pku ospke waitpkg gfni vaes vpclmulqdq rdpid movdiri movdir64b
                          fsrm md_clear serialize arch_lbr ibt flush_l1d arch_capabilities
Virtualization features:
  Virtualization:        VT-x
Caches (sum of all):
  L1d:                   640 KiB (16 instances)
  L1i:                   768 KiB (16 instances)
  L2:                    14 MiB (10 instances)
  L3:                    30 MiB (1 instance)
NUMA:
  NUMA node(s):          1
  NUMA node0 CPU(s):     0-23
Vulnerabilities:
  Itlb multihit:         Not affected
  L1tf:                  Not affected
  Mds:                   Not affected
  Meltdown:              Not affected
  Mmio stale data:       Not affected
  Retbleed:              Not affected
  Spec store bypass:     Mitigation; Speculative Store Bypass disabled via prctl
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer sanitization
  Spectre v2:            Mitigation; Enhanced IBRS, IBPB conditional, RSB filling, PBRSB-eIBRS SW sequence
  Srbds:                 Not affected
  Tsx async abort:       Not affected
$ free -m
               total        used        free      shared  buff/cache   available
Mem:           31946        2440       23292         106        6213       28945
Swap:           2047           0        2047
$ nvidia-smi -L
GPU 0: NVIDIA GeForce RTX 4090 (UUID: GPU-77860e35-a99c-0a9f-f154-58b97f45f3ba)
$ sudo fdisk -l       
Disk /dev/loop0: 4 KiB, 4096 bytes, 8 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop1: 63.28 MiB, 66355200 bytes, 129600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop2: 63.29 MiB, 66359296 bytes, 129608 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop3: 346.33 MiB, 363151360 bytes, 709280 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop4: 91.69 MiB, 96141312 bytes, 187776 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop5: 45.93 MiB, 48160768 bytes, 94064 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop6: 49.84 MiB, 52260864 bytes, 102072 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop7: 304 KiB, 311296 bytes, 608 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/nvme0n1: 931.51 GiB, 1000204886016 bytes, 1953525168 sectors
Disk model: WD Blue SN570 1TB SSD                   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 0D439098-A524-497C-ABD4-30EF14967C57

Device           Start        End    Sectors  Size Type
/dev/nvme0n1p1    2048    1050623    1048576  512M EFI System
/dev/nvme0n1p2 1050624 1953523711 1952473088  931G Linux filesystem


Disk /dev/sda: 1.82 TiB, 2000398934016 bytes, 3907029168 sectors
Disk model: WDC WD20EZAZ-00L
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disklabel type: dos
Disk identifier: 0x479d2f96
```

> 清楚配置的目的：作为一台高性能的服务器进行训练计算，而不是用于网络或者数据库等其他用途



# 安装Ubuntu

- 根据[博客](https://blog.csdn.net/Mud_Bodhisattva/article/details/113922922)在裸机上通过u盘安装Ubuntu

> 如无维护双系统的必要，安装的时候直接选**清除整个磁盘并安装Ubuntu**即可

> 建议安装在固态硬盘上（一般比较小）

- 安装好后，u盘安装可能会带来网络驱动的问题。这个时候建议通过**手机热点的USB分享网络**进行联网，更新即可安装正确的驱动
  - 也可以通过有线网络暂时解决联网的问题
- 安装好后，通过Software Update进行软件更新，更新完成后如果Ubuntu不是最新版的LTS应该会提示可以升级到Ubuntu 22.04，升级

> 升级到22.04后可能会无法打开Firefox，解决方案：
>
> ```bash
> snap remove snap-store
> snap install snap-store
> ```
>
> 即可



# 配置Ubuntu 22.04

```bash
do# zsh git flameshot
sudo apt install zsh git flameshot make curl
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://gitee.com/Annihilater/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ssh
sudo apt-get install openssh-server
ps -e | grep ssh
sudo gedit /etc/ssh/sshd_config # modify port and add PermitRootLogin yes
ssh localhost # if no ~/.ssh
sudo cat id_rsa.pub >> ~/.ssh/authorized_keys

# gcc
sudo apt-get install build-essential # 11
sudo apt-get install gcc-9 g++-9 # 9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 100 --slave /usr/bin/g++ g++ /usr/bin/g++-9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 80 --slave /usr/bin/g++ g++ /usr/bin/g++-11

# conda
wget -c https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh # https://mirrors.bfsu.edu.cn/anaconda/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh
bash Anaconda3-2022.10-Linux-x86_64.sh

# vscode
# https://code.visualstudio.com/
sudo dpkg -i code_*.deb

# cmake 下载要梯子
sudo apt-get install libssl-dev mesa-common-dev
tar -zxvf cmake-*.tar.gz
cd cmake-
./bootstrap
make -j12
sudo make install

# edge
# https://www.microsoft.com/zh-cn/edge
sudo dpkg -i microsoft-edge-stable_*.deb 
# 到Ubuntu Software卸载火狐

# cuda+cudnn
sudo apt-get install freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libgl1-mesa-glx libglu1-mesa libglu1-mesa-dev
# 11.2.0
# https://developer.nvidia.cn/cuda-11.2.0-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=runfilelocal
wget https://developer.download.nvidia.com/compute/cuda/11.2.0/local_installers/cuda_11.2.0_460.27.04_linux.run
sudo sh cuda_11.2.0_460.27.04_linux.run # 如果提示多个驱动，直接continue
tar -xvf cudnn-11.2-linux-x64-v8.1.1.33.tgz
sudo cp cuda/include/cudnn*    /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn*    /usr/local/cuda/lib64
udo chmod a+r /usr/local/cuda/include/cudnn*  /usr/local/cuda/lib64/libcudnn*
# https://developer.nvidia.cn/cuda-12-0-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=runfile_local
wget https://developer.download.nvidia.com/compute/cuda/12.0.0/local_installers/cuda_12.0.0_525.60.13_linux.run
sudo sh cuda_12.0.0_525.60.13_linux.run # 如果提示多个驱动，直接continue
tar -xvf cudnn-linux-x86_64-8.8.0.121_cuda12-archive.tar.xz
sudo cp cudnn-linux-x86_64-8.8.0.121_cuda12-archive/include/cudnn* /usr/local/cuda/include
sudo cp cudnn-linux-x86_64-8.8.0.121_cuda12-archive/lib/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn*   /usr/local/cuda/lib64/libcudnn*
sudo update-alternatives --install /usr/local/cuda cuda /usr/local/cuda-11.2 112
sudo update-alternatives --install /usr/local/cuda cuda /usr/local/cuda-12.0 120
# cuda12.1 + cudnn 9.2.0
# 9.x版本的cudnn安装方式与之前不同了，基本可以参照https://docs.nvidia.com/deeplearning/cudnn/v9.2.0/installation/linux.html#ubuntu-debian-local-installation
# 即下载一个local-repo然后通过apt-get安装
wget https://developer.download.nvidia.com/compute/cuda/12.1.1/local_installers/cuda_12.1.1_530.30.02_linux.run
sudo sh cuda_12.1.1_530.30.02_linux.run
sudo update-alternatives --install /usr/local/cuda cuda /usr/local/cuda-12.1 121
sudo update-alternatives --config cuda # remember to change to use cuda 121!!
wget https://developer.download.nvidia.com/compute/cudnn/9.2.0/local_installers/cudnn-local-repo-ubuntu2204-9.2.0_1.0-1_amd64.deb
sudo dpkg -i cudnn-local-repo-ubuntu2204-9.2.0_1.0-1_amd64.deb
sudo cp /var/cudnn-local-repo-ubuntu2204-9.2.0/cudnn-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cudnn
sudo apt-get -y install cudnn-cuda-12 # sudo apt-get -y install cudnn-cuda-11
# then check /usr/lib/x86_64-linux-gnu/libcudnn*

# docker
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh --mirror Aliyun
sudo groupadd docker
sudo usermod -aG docker $USER
sudo reboot

# meshlab，用apt的会打不开obj
sudo snap install meshlab

# opengl
sudo apt-get install build-essential libgl1-mesa-dev libglfw3 libglfw3-dev libglew2.2 libglew-dev libglm-dev
```

- 网络

- 驱动

  - 直接在软件更新里面更改，这个方法和通过apt安装是一样的（按照失败经验，建议第一个弄，在软件更新里面更新驱动之前不要通过命令行安装任何nvidia相关的东西）
  - [环境搭建01——Ubuntu如何查看显卡信息及安装NVDIA显卡驱动_ubuntuchakanxiankaqvdong_命名无能的博客-CSDN博客](https://blog.csdn.net/qiancaobaicheng/article/details/95096354)

- oh-my-zsh

  - [Ubuntu下安装ZSH - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/514636147)

  - [oh-my-zsh 国内安装及配置](https://blog.csdn.net/qwe641259875/article/details/107201760)

  - 这一步就把git给安装了

  - ```
    ZSH_THEME="ys"
    COMPLETION_WAITING_DOTS="true"
    plugins=(git
             zsh-autosuggestions
             zsh-syntax-highlighting
             extract
    )
    setopt no_nomatch
    ```

- ssh

  - [ubuntu开启SSH服务远程登录_ubuntu ssh_jackghq的博客-CSDN博客](https://blog.csdn.net/jackghq/article/details/54974141)
  - rsa免密在服务器写个`authorized_keys`即可：[Ubuntu上SSH免密登录 - 简书 (jianshu.com)](https://www.jianshu.com/p/7c86ee080e18)

- gcc

  - [linux下gcc、g++不同版本的安装和切换 - 简书 (jianshu.com)](https://www.jianshu.com/p/f66eed3a3a25)

  - 本人配置的优先级：gcc-9为100，gcc-11为80

- conda/miniconda

  - 服务器空间充裕我就装conda了，我的wsl装的是miniconda
  - [Ubuntu安装Anaconda详细步骤_ubuntu anaconda安装_旅途中的宽~的博客-CSDN博客](https://blog.csdn.net/wzk4869/article/details/128428977)
  - 这一步就把python和pip给装了

- vscode

  - [在Ubuntu系统中安装vscode_ubuntu安装vscode_ant-small的博客-CSDN博客](https://blog.csdn.net/m0_57368670/article/details/127184424)

- cuda

  - 考虑到refnerf的配置要求和最新配置，安装cuda12.0.0+cudnn8.8.0以及cuda11.2.0+cudnn8.1.1
  - [Ubuntu 安装 CUDA 和 cuDNN 详细步骤_wohu1104的博客-CSDN博客](https://blog.csdn.net/wohu1104/article/details/107041387)
  - 把cudnn的所有头文件都拷了：[Ubuntu20.04下CUDA、cuDNN的详细安装与配置过程（图文）_ubuntu cudnn安装-CSDN博客](https://blog.csdn.net/weixin_37926734/article/details/123033286)
  - 我使用了`update-alternatives`：[Linux下的CUDA多版本管理_linux 多cuda版本_Adenialzz的博客-CSDN博客](https://blog.csdn.net/weixin_44966641/article/details/120818015)

- flameshot

  - [Ubuntu 系列学习（五）ubuntu22.04安装flameshot火焰截图（图文）_ubuntu火焰截图_毅博明喆的博客-CSDN博客](https://blog.csdn.net/weixin_38493195/article/details/124874330)
  - [Ubuntu开机自启动的两种方法总结_ubuntu 自启动_苏源流的博客-CSDN博客](https://blog.csdn.net/KYJL888/article/details/103687876)
  - wayland的桌面系统会屏蔽掉该类第三方软件，如果无法使用flameshot可以考虑是桌面系统的问题

- vpn

  - [V2rayA在linux 下安装使用教程 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/414998586)
  
  - 失效了。。。而且idk why v2raya用我的节点特别慢，win和手机上用同样的节点都没毛病，换clash了
  
  - uninstall v2raya
  
    - `sudo systemctl stop v2raya.service`
    - `sudo systemctl disable v2raya.service`
    - `sudo systemctl status v2raya.service`
    - `sudo apt purge v2raya`
  
  - refer
  
    - [如何在 ubuntu 上使用 Clash](https://zhuanlan.zhihu.com/p/693754050)
    - [Clash-for-ubuntu](https://github.com/JXCrazy/Clash-for-ubuntu)
    - [clash-releases](https://github.com/doreamon-design/clash/releases)
  
  - steps
  
    - win上下载clash，处理订阅链接，并且把订阅链接拷贝到ubuntu上，把`allow-lan`设为true。可以用该yaml直接替换`~/.config/clash/config.yaml`，也可以保存为`xx.yaml`
  
    - 解压得到`clash`，通过`./clash --config xxx.yaml`/`./clash`通过[前端](https://clash.razord.top/#/settings)可以直接设置clash
  
    - 为什么要采用网页的形式，最主要是因为**方便**。可以完全把ubuntu当作服务器使用，只需要vscode开一个9090端口转发，我就能通过终端和windows的浏览器去操控ubuntu的梯子，完全不需要ubuntu的gui
  
    - 如果需要在浏览器中使用代理，需要参考[如何在 ubuntu 上使用 Clash](https://zhuanlan.zhihu.com/p/693754050)设置manual proxy
  
    - 如果只需要在终端中使用代理，在终端配置文件`.zshrc`/`.bashrc`中添加
      ```bash
      alias proxy='export http_proxy=http://127.0.0.1:7890 && export https_proxy=http://127.0.0.1:7890'
      alias unproxy='export http_proxy= && export https_proxy='
      ```
  
      使用的使用`proxy`开启，不使用的时候`unproxy`关闭
  
    - 开机启动
  
      - 我直接把clash放到了`~/`下，然后`sudo nano /etc/systemd/system/clash.service` 输入
        ```
        [Unit]
        
        Description=Clash - A rule-based tunnel in Go
        
        Documentation=https://github.com/Dreamacro/clash/wiki
        
        [Service]
        
        OOMScoreAdjust=-1000
        
        ExecStart=/home/admini/clash/clash -d /home/admini/.config/clash
        
        Restart=on-failure
        
        RestartSec=5
        
        [Install]
        
        WantedBy=multi-user.target
        ```
  
        这里的-d要加上，不知道它变成service之后的默认路径是什么，不加的话会找不到文件
  
      - `sudo systemctl enable clash`
  
      - `sudo systemctl start clash`
  
      - `sudo systemctl status clash`看状态为active，而且log显示成功启动即ok
  
      - `curl google.com.hk`失败
  
      - `proxy`
  
      - `curl google.com.hk`成功
  
      - `unproxy`
  
      - `curl google.com.hk`失败
  
      - 大功告成
  
- edge

  - [【Ubuntu 20.04 LTS】安装Edge浏览器通俗易懂 - 腾讯云开发者社区-腾讯云 (tencent.com)](https://cloud.tencent.com/developer/article/2104827)

- cmake

  - [ubuntu安装cmake的三种方法（超方便！）-CSDN博客](https://blog.csdn.net/Man_1man/article/details/126467371)
  - 用第二个方法

- docker

  - [Ubuntu安装 Docker_ubuntu安装docker_胡八一 的博客-CSDN博客](https://blog.csdn.net/qq_44732146/article/details/121207737)
  
- colmap

  - 安装的依赖参照了[Installation](https://colmap.github.io/install.html)，其中colmap的cmake命令使用的是`cmake .. -GNinja -DCMAKE_CUDA_ARCHITECTURES=native
  `
  - 参照了重命名anaconda的步骤[Ubuntu20.04安装Colmap](https://blog.csdn.net/weixin_44172157/article/details/122203759)
  - 安装ceres-solver参照了[Ubuntu18.04系统安装和使用colmap](https://www.cnblogs.com/littlebirdicy/p/13200112.html)
  
- 多硬盘挂载

  - [Ubuntu下挂载第二块硬盘 - 简书 (jianshu.com)](https://www.jianshu.com/p/d426171e882d)
  - 完成后可以用`chown`命令修改挂载目录的所属用户/用户组，参考[Ubuntu/Linux用户管理与权限管理（超详细解析）_ubuntu 用户管理_AI大龙虾的博客-CSDN博客](https://blog.csdn.net/yl19870518/article/details/100776136)

- 远程桌面

  - windows的xrdp实在蛋疼，还卡，向日葵的体验不错
  - [Linux 个人版（图形版本）使用手册-贝锐官网 (oray.com)](https://service.oray.com/question/8364.html)
  - [Windows个人版使用手册-贝锐官网 (oray.com)](https://service.oray.com/question/10549.html)
  
- 建议把自动更新关了，内核更新后我的显卡驱动直接宕机了……

  - ```
    subscribed to: security and recommended updates
    automatically check for updates: never
    when there are security updates: display immediately
    when there are other updates: display every two weeks
    notify me of a new ubuntu version: for LTS versions
    ```

  - GRUB还负责加载操作系统的**内核**和必要的初始化文件系统，以便系统能够正常启动。so我的solution：先把内核从6.2.0-31降级回6.2.0-26，删除多余的内核（每次对内核做操作或者修改grub配置后都要`sudo update-grub`）；再重新安装显卡驱动

  - [Ubuntu 显卡NVIDIA-smi提示错误_DoubleImage的博客-CSDN博客](https://blog.csdn.net/u010361236/article/details/107670464)

  - [ubuntu 开机引导文件说明(/etc/default/grub)_vi /etc/default/grub_都是弯弯绕的博客-CSDN博客](https://blog.csdn.net/baidu_40808339/article/details/108295497)

  - 修改回老版本的内核后，重新安装显卡驱动

    - `sudo apt-get purge nvidia*`
    - `ubuntu-driver devices`
    - `sudo apt-get install nvidia-xxxx` / software&updates里面选择安装
    - 安装第三方驱动（`ubuntu-drivers devices`推荐的可能是第三方驱动）时，如果系统开启了secure boot，则需要设置一个password。命令行安装时有解释为什么需要这个东西。设置password后，重启会出现四个选项，选择enroll MOK，注册刚刚安装的第三方驱动即可。

  - [删除Ubuntu中不用的内核_ubuntu卸载多余内核_bless_forever的博客-CSDN博客](https://blog.csdn.net/bless_forever/article/details/79630315)
  
  - 最后看到流畅的过渡动画，意识到显卡回来了的时候真是要哭了…………
  
- swapfile扩容

  - [How to Change Swap File Size in Ubuntu – TecAdmin](https://tecadmin.net/change-swap-file-size-in-ubuntu/)
  - [How To Add Swap Space on Ubuntu 20.04 | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04)
  
- 特别特别诡异的问题：`site-packages/pymeshlab/lib/libmeshlab-omon. so: undefined symbol: _ZdlPvm, version0t5`

  - pymeshlab作者说建议不要用conda的pip安装
  - solution：`apt-get install python3-opencv --fix-missing`



