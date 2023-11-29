# C++

> Everything is on ubuntu



## File Structure

```cmd
.
├── bin        	# bin文件
│   └── glut32.dll
├── 3rdparty	# 第三方子模块
├── build		# 编译文件夹
├── CMakeLists.txt
├── include		# 头文件
│   ├── GL
│   └── vec3f.h
├── lib			# lib文件
│   ├── glut32.lib
│   └── glut64.lib
└── src			# 源文件
    └── obj-viewer.cpp
```



## Compilation

- Cmake
  - 修改`CMAKE_BUILD_TYPE`可以在Release和Debug之间切换，方便进行调试或发布
  - 一般来说，`mkdir build && cd build && cmake .. && make`

```cmake
cmake_minimum_required(VERSION 3.25)
project(CDetection LANGUAGES CXX CUDA)
set(TARGET_NAME main)

# for clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS_DEBUG " $ENV{CXXFLAGS} -O0 -Wall -g -ggdb ")
set(CMAKE_CXX_FLAGS_RELEASE " $ENV{CXXFLAGS} -O3 -Wall ")

find_package(CUDA REQUIRED)
find_package(OpenMP REQUIRED)

# 添加include文件夹路径
include_directories(include)

# 添加系统库的include目录
include_directories(SYSTEM /usr/include/GL)

# 添加源文件
file(GLOB SOURCES
    src/obj-viewer.cpp)

# 添加头文件
file(GLOB HEADERS
    include/GL
    include/vec3f.h
    include/mat3f.h
)

# 添加可执行文件
add_executable(${TARGET_NAME} ${SOURCES} ${HEADERS})

# 添加当前路径下的链接库目录
link_directories(lib)

# 添加链接库
target_link_libraries(${TARGET_NAME} glut GL GLU OpenMP::OpenMP_CXX)
```



- g++/nvcc
  - 真正进行编译的工具，简单的项目可以不需要cmake，直接用g++/nvcc
  - 多版本可以用`update-alternatives`管理
    - [Linux命令之update-alternatives - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/20797436)
    - `sudo update-alternatives --config cuda`
    - `sudo update-alternatives --config g++`



## Coding

- 使用VSCode

- 编译使用cmake

  - 模板

- 配合cmake，高亮提示等使用[clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)

  - [最终，我看向了clangd - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/364518020)

  - [几乎无痛的VSCode+clangd+lldb+cmake配置C/C++开发环境指南 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/566365173)

  - 配置分享
    ```json
    "clangd.arguments": [
            "--compile-commands-dir=${workspaceFolder}/build",
            "--header-insertion=never",  // 不加这个可能会乱加头文件，很烦
            "--query-driver=/usr/bin/g++*", // 不加这个会找不到系统库头文件，但可以编译
            "--completion-style=detailed",
            "--clang-tidy",
            "--background-index",
        ],
    ```

    

## Debug

- 命令行调试工具[GDB](https://zhuanlan.zhihu.com/p/297925056)
  - 编译时一定要带`-g`
  - [GDB print和display命令：查看变量的值 (biancheng.net)](https://c.biancheng.net/view/8238.html)
  - [GDB使用详解 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/297925056)
  - 常用
    - 启动：`gdb ./main`
    - 打断点：`b main.cpp:25` / `b main.cpp:main`
    - 运行程序：`run`
    - 正常执行直到断点：`continue`
    - 查看变量：`p name`
    - 查看源代码：`list`
    - 每次程序暂停都自动打印：`display`
- C/C++ 代码缺陷静态检查工具[CppCheck](https://www.cnblogs.com/lvdongjie/p/9549254.html)
  - `sudo apt-get install cppcheck`



## Package Management

- `pkg-config`
  - 历史原因，c++没有自己的pip，在ubuntu上使用`pkg-config`来查看管理c代码包比较方便
  - `pkg-config opencv --libs --cflags`
  - `pkg-config opencv --modeversion`
  - `pkg-config --list-all | grep xxx`

- `ldd`
  - [“ldd”命令详解_ldd命令-CSDN博客](https://blog.csdn.net/f_carey/article/details/109686310)

- `c++filt`
  - [c++filt command-CSDN博客](https://blog.csdn.net/K346K346/article/details/88225726)

- `strings`
  - [strings命令用法_strings命令的用法-CSDN博客](https://blog.csdn.net/weixin_43824520/article/details/101366154)





