## configuration

用来配置c/c++环境，配了之后我直接把c/c++插件卸载了

- 可以在vsc的设置里面加入全局的设置

```json
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
- 如果需要新增自定义的路径，新建文件`.clangd`并加入如

  ```
  CompileFlags:
    Add: [-I/some/include/path, -I/another/include/path]
  ```



## startup

> https://clangd.llvm.org/installation#project-setup

- 下载好vscode-clangd插件和cmake插件，并且下载好language server
- 准备一个新项目，项目下有

```
.
├── cc.cpp
└── CMakeLists.txt
```

- cmake内有

  - 其中`CMAKE_EXPORT_COMPILE_COMMANDS`是用来导出`compile_commands.json`的，clangd根据这个json来编译，在vsc内产生报错信息与提示信息

  - `CMAKE_CXX_COMPILER`需要指定为g++，不然产生的json内命令全为c++，会导致找不到头文件等错误

  - from qwen: 

    > **c++**: 这个名字实际上是一个通用的C++编译器命令，在许多Linux发行版中（包括Ubuntu），它默认链接到g++。也就是说，当你运行`c++`命令时，实际上是在运行`g++`。这个命名是为了提供一种跨平台兼容性，使得代码可以在不同的系统上使用不同的默认编译器进行编译。

  - 实际上呢，把`compile_commands.json`内所有的c++改为g++，clangd即可正确运行，改回去则出错。我也通过stat等命令确认过了，电脑上的c++就是指向g++，我也不懂为何了。。。

```cmake
cmake_minimum_required(VERSION 3.10)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
# Set the project name
project(test)

# Add an executable
add_executable(test cc.cpp)
```

- 如果安装了cmake插件，重启vsc即会自动编译出build文件夹，或者可以手动在终端内通过`cmake ..`来得到
  - 似乎终端调用的是GNU，而vsc调用的是ninja，如果在终端内手动启动了一次cmake，然后再重新打开vsc，可能会看到终端输出`CMake Error: Error: generator : Ninja Does not match the generator used previously: Unix Makefiles`等错误，删掉`build/CMakeCache.txt`即可
- 如果最后得到了正确的`build/compile_commands.json`，那么理论上此时editor内的信息应该都是对的



## windows

[Windows系统中 CMAKE 选择vc编译器或者gnu编译器的解决方案](https://zhuanlan.zhihu.com/p/548235468)

最后我还需要手动修改一下json里面的可执行文件路径，应该是编码的问题
