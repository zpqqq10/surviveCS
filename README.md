# 从浙大CS活下来！
* 在浙大cs存活下来的一点痕迹
* 已尽量删除[icicles](https://github.com/QSCTech/zju-icicles)的内容
* 请去98搜索评鉴*《洗完衣服发现宿舍多了一个人》*，谢谢喵！



# 一些有用的东西
* 下载电子教材网站：http://libgen.rs/

* 暴算网站：https://www.wolframalpha.com/

* 数学工具：https://zh.numberempire.com/derivativecalculator.php

* 下载、查文献的插件：[Endnote Click](https://chrome.google.com/webstore/detail/endnote-click-formerly-ko/fjgncogppolhfdpijihbpfmeohpaadpc?hl=zh-CN)

* 控制视频速度的插件：[Global Speed](https://chrome.google.com/webstore/detail/global-speed/jpbjcnkcffbooppibceonlgknpkniiff?hl=zh-CN)

* 广告屏蔽插件：[Adblock Plus](https://chrome.google.com/webstore/detail/adblock-plus-free-ad-bloc/cfhdojbkjhnklbpkdaibdccddilifddb?hl=zh-CN)

* 从仓库下载特定文件的插件：[GitZip for github](https://chrome.google.com/webstore/detail/gitzip-for-github/ffabmkklhbepgcgfonabamgnfafbdlkn)

* 运行脚本的插件：[Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo)
  * 配合[Greasy Fork](https://greasyfork.org/zh-CN)使用
  
* Windows下的截图、编辑、贴图软件：[Snipaste](https://www.snipaste.com/)

* Linux下的截图、编辑、贴图软件：[Flameshot](https://github.com/flameshot-org/flameshot)

* Windows下的文件全局搜索的软件：[Everything](https://www.voidtools.com/)

* *VS Code*必须会用……本人使用的一些觉得很好的插件：
  
  * [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)
  * [Better C++ Syntax](https://marketplace.visualstudio.com/items?itemName=jeff-hykin.better-cpp-syntax)
  * [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
  * [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)
  * [hexdump for VSCode](https://marketplace.visualstudio.com/items?itemName=slevesque.vscode-hexdump)
  * [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
  * [vscode-random](https://marketplace.visualstudio.com/items?itemName=jrebocho.vscode-random)
  * 美化一下字体：[FiraCode font](https://marketplace.visualstudio.com/items?itemName=SeyyedKhandon.firacode)和[vscode - 修改字体 、 合并字符、 使用连体字（Fira Code）_vscode连体字](https://blog.csdn.net/LawssssCat/article/details/104304546)
  * [ChatGPT - Genie AI](https://marketplace.visualstudio.com/items?itemName=genieai.chatgpt-vscode)
    
    * 注册时需要用的手机号可以在[SMS-Activate](https://sms-activate.org/)花点小钱解决，多试试几个号码就行了
    * 如果验证失败的次数太多了，会被要求过一阵子再验证，搜了一下一阵子指48小时
    * 登录后[获取api keys](https://platform.openai.com/account/api-keys)，在插件设置中保存即可
  * [clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
  
    * 用来配置c/c++环境，配了之后我直接把c/c++插件卸载了，感觉比那个好用多了
    * ```json
      "clangd.arguments": [
              "--compile-commands-dir=${workspaceFolder}/build",
              "--header-insertion=never",  // 不加这个可能会乱加头文件，很烦
              "--query-driver=/usr/bin/g++*", // 不加这个会找不到系统库头文件，但可以编译
              "--completion-style=detailed",
              "--clang-tidy",
              "--background-index",
          ],
      "clangd.fallbackFlags": ["-std=c++11"],  // 不加这个可能会找不到标准库，9/11/14取决于电脑上装了什么版本
      ```
    
    * 如果需要新增自定义的路径，新建文件`.clangd`并加入如
      ```
      CompileFlags:
        Add: [-I/some/include/path, -I/another/include/path]
      ```
  * ……
  
* *Linux*必须会用……
  
  * 双系统
  * 虚拟机
  * WSL
  * 服务器
  
* *git*必须会用……

* v2ray自己[配置](https://b.julym.com/original/517.html)
  * 上述配置教程不一定可用……因为自己用过的教程找不到了……使用订阅链接则可以不买服务器
  * [v2rayfree](https://github.com/aiboboxx/v2rayfree)
  * [free_proxy_ss](https://github.com/learnhard-cn/free_proxy_ss)
  
* *Typora*值得花一花钱，支持正版、用钱支持开发者是一件大好事

* *Python*似乎是一门cs老师默认学生会的语言，学起来也不难

* 老师不会教但很可能很有用、值得了解的东西：
  * Go语言
  * 前后端开发模式
  * Makefile
  * LaTex/Markdown
  * …
  
* 配置Powershell: oh-my-posh

  * [Windows Terminal美化（oh-my-posh3） - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/354603010)

  * [powershell+oh-my-posh PSReadLine 代码提示配置 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/505023994)

  * [关于终端：ANSI颜色转义序列列表 | 码农家园 (codenong.com)](https://www.codenong.com/4842424/)

  * 似乎现在更新了，使用官方的winget即可：[Windows | Oh My Posh](https://ohmyposh.dev/docs/installation/windows)

  * win11自带terminal（最好手动更新一下），win10要先去microsoft store安装，我的配置是默认启动PowerShell7.2（手动安装），安装了命令补全和高亮，使用主题ys

  * 装了PowerShell7.2后想卸载预装的5.1，但是好像没办法卸载……

  * 我的`$PROFILE`配置如下（最后一行配置代理）：

    ```
    oh-my-posh init pwsh --config C:\Users\Lenovo\AppData\Local\Programs\oh-my-posh\themes\ys.omp.json | Invoke-Expression
    Import-Module PSReadLine
    Set-PSReadLineOption -PredictionSource History
    Set-PSReadLineOption -Colors @{ "InlinePrediction"="`e[36m" }
    Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
    Set-PSReadLineOption -ShowToolTips
    function proxy {$env:all_proxy="socks5://127.0.0.1:10808"}
    function unproxy {$env:all_proxy = ''}
    ```

* 配置shell: oh-my-zsh

  * [玩转WSL(3)之安装并配置oh-my-zsh - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/199798102)

    * [oh-my-zsh 国内安装及配置](https://blog.csdn.net/qwe641259875/article/details/107201760)

  * [玩转WSL(5)之zsh常用配置和插件 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/242199299)

  * 解决代理问题
  
    * [给WSL配置代理](https://zhuanlan.zhihu.com/p/414627975)，这里我采用了8.8.8.8作为nameserver，并且要注意的是v2ray最下面有行小字显示局域网连接的端口是多少，我这里显示的端口并不是本机端口10808……因为这个卡了很久
  
    * [ubuntu系统下执行sudo apt-get update报错无法连接上 127.0.0.1:58591 (127.0.0.1)。- connect (111: 拒绝连接)的踩坑历程及解决方案总结_zeeq_的博客-CSDN博客](https://blog.csdn.net/weixin_44120025/article/details/120934224)（很怪的一个问题……不知道怎么就突然出现了……）
  
    * 用的是v2rayn，设置里面打开*允许来自局域网的连接*，下述设置的端口选择v2rayn窗口左下角的*局域网*端口
  
    * ```bash
      # add for proxy
      export hostip=$(ip route | grep default | awk '{print $3}')
      alias proxy='export ALL_PROXY="socks5://${hostip}:10810";'
      alias unproxy='unset ALL_PROXY;'
      ```
  
  * 使用主题ys，安装的plugins有：
    ```
    ZSH_THEME="ys"
    COMPLETION_WAITING_DOTS="true"
    plugins=(git
             zsh-autosuggestions
             zsh-syntax-highlighting
             extract
    )
    setopt no_nomatch
    ```
  
* 利用github搭建自己的网站：[我是如何利用Github Pages搭建起我的博客，细数一路的坑 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/334815426)

* [Inigo Quilez :: computer graphics, mathematics, shaders, fractals, demoscene and more (iquilezles.org)](https://iquilezles.org/)

* ...



# 关于课程

有许多课程很重要但我没有放进来，原因有：

* 我认为这些课程培养的是一种能力，需要训练来培养、内化，不需要太多笔记太多知识
* 作业什么的都是纸质交的……没留资料下来
* [icicles](https://github.com/QSCTech/zju-icicles)的已经很完善了，而我也没有原创产出

一些我蹭过的或者上过的个人认为很有意思或价值的课：

* 国懿的**中国外交**
  * 国懿是一个非常非常值得称为老师的老师，我理解浙大作为一所快速发展中的高校有它的需求和要求，也理解国懿的个人追求
  * 国懿不在浙大开课了是浙大的损失，也是全体浙大学生的损失
* 心理学及应用
* 自我探索与心理成长
* 视觉奥秘及应用
* 法学基础
* 经济法理论与实务
* 李兴建的证券投资学
* 汇编语言程序设计基础
* 英美当代畅销小说评析
* 面向信息技术的沟通技巧
  * 其实这门课可能是cs最有用的课之一……但是呢，个人认为，会重视这个的人，其实不需要上也已经有意或无意地掌握了不少沟通技巧；而不会重视这个的人，还是得等自己的老板教做人
  * 本人上的是陈越的
* 蹭过的数学课就不说了……不做练习的数学确实是白学

一些我个人认为体验很差的课，原因很多：

* 软件工程
  * 这门课但凡敢放在大二，cs得有一半人大二转专业，我说的
* 生命科学
  * 两个老师的其中之一说话和作派很让人讨厌
  * 课程本身的屁事也有点多
* 英语词汇学
  * 老师分低是有理由的……
* **所有思政课**

本人对选课的态度：

* 可以有挑战但不能屁事多
* 选了的就竭尽全力认真上，除了思政课和软工
* 不选认为没价值或者自己会水过去的课
* 按个人体验来看，挑老师似乎不是一件很必要的事



# 一些网站

* [蒋炎岩老师的读研劝退信](https://jyywiki.cn/Letter.md)
* [太鼓达人模拟器]([太鼓ウェブ - Taiko Web (cjdgrevival.com)](https://cjdgrevival.com/))
* [How To Ask Questions The Smart Way](https://github.com/ryanhanwu/How-To-Ask-Questions-The-Smart-Way/blob/main/README-zh_CN.md)
* [CS自学指南](https://csdiy.wiki/)
* [上海交通大学生存手册](https://survivesjtu.gitbook.io/survivesjtumanual/)
* [Data Structure Visualizations](https://www.cs.usfca.edu/~galles/visualization/Algorithms.html)
* [Standard - Turbulence](https://turbulence.nei.st/publication/standard/)
* [iconfont-阿里巴巴矢量图标库](https://www.iconfont.cn/)
* [CS-Notes (cyc2018.github.io)](https://cyc2018.github.io/CS-Notes/#/)
* [IEEE-754 Floating Point Converter (h-schmidt.net)](https://www.h-schmidt.net/FloatConverter/IEEE754.html)
* [nazo.one-story.cn](https://nazo.one-story.cn/)
* https://harrynull.tech/cipher/
* [tldraw](https://www.tldraw.com/)
* ...
