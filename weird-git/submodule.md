## git submodule

### 省流

务必通过命令`git submodule add`来添加子模块，并且通过`git submodule deinit`来移除

### Question

有时添加了子模块后会发现云端仓库没有产生正确的链接，并且可能会有父仓库该如何 track submodule 的问题。这些问题的本质都是没有正确配置 submodule。

submodule 的信息存在于三处：

1. `.gitmodules`

2. `.git/config`

3. `.git/modules`

4. 一个名字为 submodule 路径名的新文件

使用`git submodule add`之后通过`git diff` / `git diff --staged` / `git diff --cached`可以看到，明面上被改动的是`.gitmodules`和一个名字就是 path 的[mode 160000](https://git-scm.com/book/en/v2/Git-Tools-Submodules)的文件：

```bash
$ git diff --staged
diff --git a/.gitmodules b/.gitmodules
new file mode 100644
index 0000000..8dc8f5a
--- /dev/null
+++ b/.gitmodules
@@ -0,0 +1,4 @@
+[submodule "Content"]
+       path = Content
+       url = https://xxx.git
+       branch = master
diff --git a/Content b/Content
new file mode 160000
index 0000000..7571f82
--- /dev/null
+++ b/Content
@@ -0,0 +1 @@
+Subproject commit 7571f...
```

这两个变动都得被 add 然后 push，这样才算是正确地添加了一个 submodule。

### fix

如果已经搞出岔子了补救，一个 feasible but maybe not minimum 的方法就是把 submodule 的路径删了，并且检查上述四项记载了 submodule 信息的地方。

感谢腾讯 urftian 老哥。
