# python

## Environment

- conda
  - PC上使用miniconda，服务器上使用anaconda3，后者对存储空间要求更高
  - 每个项目都在conda的虚拟环境中运行
- requirements.txt
  - 最好指定版本，严格一点，更方便复现，尤其是机器学习相关的包更新非常快
  - 需要通过git仓库安装的可以在txt中使用类似于`implicit-seg @ git+https://github.com/Project-Splinter/ImplicitSegCUDA`的写法



## Debug

- 命令行调试工具[pdb](https://www.jianshu.com/p/8e5fb5fe0931)
  - 直接在源码中使用`breakpoint()`也可以，然后运行`python xxx.py`
- 用于输出的调试工具[icecream](https://blog.csdn.net/CoderPai/article/details/113784550)



## Package

- 进度条库[tqdm](https://zhuanlan.zhihu.com/p/163613814)
- 为脚本传递命令参数的包[argparse](https://blog.csdn.net/RudeTomatoes/article/details/117003291)
- 可替换argparse的[ConfigArgParse](https://blog.csdn.net/fengbingchun/article/details/129333101)
  - Python’s command line parsing modules such as *argparse* have very limited support for config files and environment variables, so this module extends argparse to add these features.
- 读取配置文件的包[ConfigParser](https://www.cnblogs.com/ming5218/p/7965973.html)
- 日志模块[Logging](https://zhuanlan.zhihu.com/p/166671955)