# VideoIO

> 整理一下工作中遇到的关于视频读写/编解码的问题或者理解



## mp4

[视频的容器格式和编码格式详解_视频为什么要容器-CSDN博客](https://blog.csdn.net/jkzyx123/article/details/141931531)

[视频格式、编码解码器、编码格式、封装格式/容器，这些都是什么？_audio stream container-CSDN博客](https://blog.csdn.net/yezi0u0/article/details/115118064)

[【可能是】最全的mp4文件基础 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/374140861)



## ffmpeg

> [FFmpeg是一个开源的项目，提供了用于录制、转换和流式传输音频和视频的工具和库。](https://ffmpeg.org/)

- 安装
  - 可以通过apt安装，安装后可以通过命令查看其支持的编解码器和编译参数
  - 也可以自行编译安装
  - [opencv和ffmpeg的版本之间有依赖](https://www.zhihu.com/question/27056113)

- 常用命令与[FFmpeg 实用命令](https://wklchris.github.io/blog/FFmpeg/FFmpeg.html)

```bash
# 检查帧数
ffprobe -count_frames -select_streams v:0 -show_entries stream=nb_read_frames out.mp4

# 查看硬件加速
ffmpeg -hwaccels

# 截取一段时间
ffmpeg -i bebop.mp4 -t 00:00:30 -c copy bebop1.mp4

# 查看流
ffprobe -show_streams -i bebop1.mp4

# 这样就可以往一个mp4里面塞两个video stream
ffmpeg -i output.mp4 -i o1.mp4 -map 0:0 -map 1:0 -c copy test.mp4

# 启动硬件加速
ffmpeg -hwaccel cuda -i input.mp4 output.avi

# 查看编解码器
ffmpeg -encoders
ffmpeg -decoders

# 省略开头的编译参数输出
ffmpeg -hide_banner -hwaccel cuda -i input.mp4 output.avi

# 查看支持的参数
ffmpeg -hide_banner -h encoder=h264_nvenc
ffmpeg -hide_banner -h encoder=libx264
```

- 使用h264无损压缩
  - [图解YU12、I420、YV12、NV12、NV21、YUV420P、YUV420SP、YUV422P、YUV444P的区别-CSDN博客](https://blog.csdn.net/byhook/article/details/84037338)
  - 也就是说，一定要使用yuv444/huffyuv，这样的话一组yuv对应一组rgb，这样才有无损的可能
  - 编码的时候光指定qp为0还不够，因为默认的编码器`libx264`还是在yuv空间上编码的，而yuv和rgb的转换会有无可避免的损失
  - 因此答案是需要使用基于rgb空间的编码器才能实现h264的无损压缩`-c:v libx264rgb -profile:v high444 -qp 0 -preset veryslow`（或者用ffv无损压缩编码）
  - 普通的x264（而不是264rgb）对yuv来说应该确实是可以无损的，转换为rgb之后算了一下diff，就是-2到+2之间的五个整数，说明这个很有可能就是整数舍入带来的误差

- yuv与rgb
  - [在ffmpeg中，网络视频流h264为什么默认的转为YUV而不是其他格式_ffmpeg 视频传输 yuv-CSDN博客](https://blog.csdn.net/weixin_40425640/article/details/134078975)
  - yuv空间更加适合压缩（人眼不易察觉的压缩）
  - yuv是一个比较广义的称呼，一般来说大家提到yuv说到的其实是经过矫正的[Y′UV](https://en.wikipedia.org/wiki/Y′UV)，opencv使用的转换是[经过gamma矫正的SDTV转换](https://segmentfault.com/a/1190000016443536)
- 质量控制
  - libx264的`crf`，h264_nvenc的`cq`（优先于`qp`）
  - `qp`
  - `tune`
  - `preset`
  - `profile`




## HardWare Acceleration

```bash
sudo apt-get install -y libva-dev vainfo vdpauinfo
```



- vaapi
  - intel家提出的开源技术
  - 适合linux
  - intel显卡驱动的名字`/usr/lib/x86_64-linux-gnu/dri/`一般是iHD或者i965（推荐前者），i965和iHD负责连接intel显卡驱动和vaapi
  - 就是一套api，底层实现可以是vdpau或者别的，在nvidia显卡的linux上感觉直接用vdpau就可以了
  - 如果直接查看vaapi的驱动信息命令`vainfo`，输出会说找不到`/usr/lib/x86_64-linux-gnu/dri/nvidia_drv_video.so`
- vdpau
  - nvidia家提出的开源技术
  - u代表for unix，显然也适合linux
  - nvidia显卡的vaapi后端，负责连接显卡驱动和vaapi
  - [drivers - Vainfo returns "libva error: /usr/lib/x86_64-linux-gnu/dri/i965_drv_video.so init failed" in dual gpu system - Ask Ubuntu](https://askubuntu.com/questions/1093954/vainfo-returns-libva-error-usr-lib-x86-64-linux-gnu-dri-i965-drv-video-so-ini) 在新版ubuntu中这个驱动被移除了；而根据[Bug #1890815 “vainfo requires a nvidia sofile not in repositorie...” : Bugs : libva-utils package : Ubuntu (launchpad.net)](https://bugs.launchpad.net/ubuntu/+source/libva-utils/+bug/1890815) 里面有一个从18.04下载vdpau-va-driver的方法；但是这个方法也有点难用了，ubuntu22会检测下载，说这个不是沙盒中下载的，不给安装，还需要额外的操作
  - `vdpauinfo`的输出似乎说明nvidia的驱动带了一个vdpau，但是找不到相应的驱动文件；根据[libva Configuration for hybrid Intel/NVIDIA: conflicting chrome/vainfo / Laptop Issues / Arch Linux Forums](https://bbs.archlinux.org/viewtopic.php?id=292650) 设置`export VDPAU_DRIVER=nvidia`后再查看`vainfo`，此时可以正常输出信息了。然后这个时候再查看驱动路径`/usr/lib/x86_64-linux-gnu/dri/`，发现突然多出了一个`vdpau_drv_video.so`，然后`nvidia_drv_video.so`软链接到了`vdpau_drv_video.so`
  - 可能是，`vdpauinfo`能直接找到nvidia驱动带的那个驱动，但是还要通过环境变量的方式告诉`vainfo`要去找nvidia驱动
- nvenc/nvdec/cuvid
  - 私有，只适合nvidia显卡
  - 有人说这一套是用来取代vdpau的
  - [Read Me - NVIDIA Docs](https://docs.nvidia.com/video-technologies/video-codec-sdk/12.0/read-me/index.html) 里面提到了驱动的要求
  - 启用opencv的cudacodec加速要用到Video Codec SDK

- dxva
  - windows的

- [FFmpeg/configure at n4.4.2 · FFmpeg/FFmpeg (github.com)](https://github.com/FFmpeg/FFmpeg/blob/n4.4.2/configure)可以看到vaapi，vdpau，nvenc和cuvid都是自动检测的，但是cuda不知道为啥我直接apt装的能有（仓库里面说的是默认值为no）
- 查看显卡编解码
  - windows上直接呼出任务管理器即可查看
  - ubuntu上可以用`nvidia-smi -l 5 -q -d UTILIZATION` / `watch -n 1 nvidia-smi -q -d UTILIZATION`
  - 使用`-hwaccel cuda`时可以看到使用vdpau的时候大概是一个30%的decoder使用率，这个结果与[ffmpeg 硬件加速视频转码指南 - afnewiung - 博客园 (cnblogs.com)](https://www.cnblogs.com/xlfqrxlf/p/16879357.html)是比较一致的，也就是说得指定编解码器，而不是指定hwaccel
  - `ffmpeg -encoders | grep nv`和`ffmpeg -decoders | grep cu`可以找到cuvid和nvenc




## OpenCV

支持硬件加速视频编解码的opencv需要自行编译，使用的命令如下：

```bash
# prepare video codec sdk (downloaded from nvidia)
# remember to check permissions after copy
cp -r Video_Codec_SDK_12.0.16/Interface/* /usr/local/cuda-11.8/include

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout 4.8.0
cd ../opencv
git checkout 4.8.0
mkdir build && cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D CMAKE_C_COMPILER=/usr/bin/gcc-9 \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_ENABLE_NONFREE=ON \
-D WITH_CUDA=ON \
-D WITH_CUDNN=ON \
-D WITH_CUBLAS=ON \
-D WITH_TBB=ON \
-D OPENCV_DNN_CUDA=ON \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D CUDA_ARCH_BIN=8.9 \ # modify this
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D OPENCV_EXTRA_MODULES_PATH=$HOME/Downloads/opencv4.8/opencv_contrib/modules \ # modify this
# -D PYTHON3_EXECUTABLE=/home/hb/anaconda3/bin/python3.7m \
# -D PYTHON3_INCLUDE_DIR=/home/hb/anaconda3/include/python3.7m \
# -D PYTHON3_LIBRARY=/home/hb/anaconda3/lib/libpython3.7m.so \
# -D PYTHON3_NUMPY_INCLUDE_DIRS=/home/hb/anaconda3/lib/python3.7/site-packages/numpy/core/include \
# -D PYTHON3_PACKAGES_PATH=/home/hb/anaconda3/lib/python3.7/site-packages \
# -D PYTHON_DEFAULT_EXECUTABLE=/home/hb/anaconda3/bin/python3.7m \
# -D CUDNN_LIBRARY=/usr/local/cuda/lib64/libcudnn.so.8.3.3 \
# -D CUDNN_INCLUDE_DIR=/usr/local/cuda/include  \
# -D CUDA_CUDA_LIBRARY=/usr/local/cuda/lib64/stubs/libcuda.so \
# -D OPENCV_PYTHON3_INSTALL_PATH=/home/hb/anaconda3/lib/python3.7/site-packages \
-D WITH_WEBP=ON \
-D WITH_OPENCL=OFF \
-D ETHASHLCL=OFF \
-D ENABLE_CXX11=ON \
-D BUILD_EXAMPLES=OFF \
-D WITH_OPENGL=ON \
# -D WITH_GSTREAMER=ON \
# -D WITH_V4L=ON \
# -D WITH_QT=OFF \
-D WITH_NVCUVID=ON \
-D BUILD_opencv_cudacodec=ON \
-D BUILD_opencv_hdf=OFF \
-D BUILD_opencv_python3=OFF \
-D BUILD_opencv_python2=OFF \
# -D HAVE_opencv_python3=ON \
..
```

- 安装好cuda并且启用相应的`WITH_NVCUVID=ON`后，cmake的输出可以看到出现了NVIDIA CUDA
- 需要把video codec sdk的头文件放到cuda的include里面去，此时再重新编译，才能看到包含视频编解码的支持，这样编译出来的才支持cuda加速视频编解码；关键输出如下

```shell
--   Video I/O:
--     DC1394:                      YES (2.2.6)
--     FFMPEG:                      YES
--       avcodec:                   YES (58.134.100)
--       avformat:                  YES (58.76.100)
--       avutil:                    YES (56.70.100)
--       swscale:                   YES (5.9.100)
--       avresample:                NO
--     GStreamer:                   NO
--     v4l/v4l2:                    YES (linux/videodev2.h)
--
--   Parallel framework:            TBB (ver 2021.5 interface 12050)
--
--   Trace:                         YES (with Intel ITT)
--
--   Other third-party libraries:
--     Intel IPP:                   2021.8 [2021.8.0]
--            at:                   /home/admini/Downloads/opencv4.8/opencv/build/3rdparty/ippicv/ippicv_lnx/icv
--     Intel IPP IW:                sources (2021.8.0)
--               at:                /home/admini/Downloads/opencv4.8/opencv/build/3rdparty/ippicv/ippicv_lnx/iw
--     VA:                          YES
--     Lapack:                      NO
--     Eigen:                       YES (ver 3.4.0)
--     Custom HAL:                  NO
--     Protobuf:                    build (3.19.1)
--     Flatbuffers:                 builtin/3rdparty (23.5.9)
--
--   NVIDIA CUDA:                   YES (ver 11.8, CUFFT CUBLAS NVCUVID NVCUVENC FAST_MATH)
--     NVIDIA GPU arch:             89
--     NVIDIA PTX archs:
--
--   cuDNN:                         YES (ver 8.8.0)
```

- 遇到了一个关于找不到mpi头文件的错，解决方式见[Make error when compling with opencv_contrib-3.4.16 · Issue #3216 · opencv/opencv_contrib](https://github.com/opencv/opencv_contrib/issues/3216)，我安装了`libhdf5-dev`也没有解决，最后选择关掉了编译这个模块
- 完成安装后可以在`/usr/local/lib/pkgconfig/opencv4.pc`找到配置，pkg-config输出的版本也是对的，手动安装的优先级应该高于系统自带的4.5.0的版本
- daunma



实践经验：

- 结论：opencv不支持读多video stream
  - `cap_interface.hpp`里面定义了params，会记录每个参数有没有被不同的backend使用。没被使用的话，就会直接报错。
  - ffmpeg backend不支持设置读哪个stream，是直接循环stream，得到第一个video stream之后就break
  - 如果是gstreamer或者msmf backend的话，都会判断传入的`CAP_PROP_VIDEO_STREAM`的值为0或者-1（也就是要么第一个，要么不读video stream）
  - `CAP_PROP_VIDEO_STREAM`的作用并不是控制读视频文件中的哪个video stream，而是配合实现不读取video stream，仅读取audio stream

- 结论：opencv cudacodec不支持读yuv444的视频
  - `opencv_contrib/modules/cudacodec/src/video_decoder.cpp`中可以看到，他会说NV12是目前唯一支持的decoder format
  - `opencv_contrib/modules/cudacodec/src/ffmpeg_video_source.cpp`中的函数FourccToChromaFormat是另一个佐证

- 结论：进一步说，opencv不支持读多视频流mp4
  - 即使是h264编码，opencv会报找不到moov的错

- hwac速度的问题
  - 目前对于yuv444的h264视频，发现使用cuda的速度并不会比cpu更快
  - 如果使用vdpau，则速度还要更慢一点，还会报不支持nv12 format的错
  - 硬件加速没有体现出优势的分析
    - h264算法比较老了，现在比较强悍的cpu可以比较好地处理这个算法
    - 硬件算力越来越强，因此目前在cpu和gpu在速度上体现不出太大区别，更多的区别在于算力资源的分配
    - cudacodec能体现出显著的速度差异，但是opencv只支持了yuv420
    - 参考[Nvenc vs x264 : r/obs (reddit.com)](https://www.reddit.com/r/obs/comments/19di1po/nvenc_vs_x264/)和[Is NVIDIA NVENC better than X264? - Quora](https://www.quora.com/Is-NVIDIA-NVENC-better-than-X264)
  - 发现使用nvenc编码出来的视频，码率会显著变低，设置cq也没用；似乎走硬件的nvenc就是性能会差一些，而cpu软解虽然慢但是性能更好
