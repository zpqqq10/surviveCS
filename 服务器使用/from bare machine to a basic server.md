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

# docker
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh --mirror Aliyun
sudo groupadd docker
sudo usermod -aG docker $USER
sudo reboot

# meshlab
sudo apt-get install meshlab
```

- 网络

- 驱动

  - 直接在软件更新里面更改，这个方法和通过apt安装是一样的（按照失败经验，建议第一个弄，在软件更新里面更新驱动之前不要通过命令行安装任何nvidia相关的东西）
  - [环境搭建01——Ubuntu如何查看显卡信息及安装NVDIA显卡驱动_ubuntuchakanxiankaqvdong_命名无能的博客-CSDN博客](https://blog.csdn.net/qiancaobaicheng/article/details/95096354)

- oh-my-zsh

  - [Ubuntu下安装ZSH - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/514636147)

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
  - [Linux下安装cuda和对应版本的cudnn_linux安装cuda和cudnn_水哥很水的博客-CSDN博客](https://blog.csdn.net/qq_44961869/article/details/115954258)
  - 我使用了`update-alternatives`：[Linux下的CUDA多版本管理_linux 多cuda版本_Adenialzz的博客-CSDN博客](https://blog.csdn.net/weixin_44966641/article/details/120818015)

- flameshot

  - [Ubuntu 系列学习（五）ubuntu22.04安装flameshot火焰截图（图文）_ubuntu火焰截图_毅博明喆的博客-CSDN博客](https://blog.csdn.net/weixin_38493195/article/details/124874330)
  - [Ubuntu开机自启动的两种方法总结_ubuntu 自启动_苏源流的博客-CSDN博客](https://blog.csdn.net/KYJL888/article/details/103687876)

- vpn

  - [V2rayA在linux 下安装使用教程 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/414998586)
  
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



