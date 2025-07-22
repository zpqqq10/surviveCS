## git rebase

首先`git log --oneline`，查看提交的 hash 及其 message。

然后`git rebase -i HEAD~X`，X 替换为需要编辑的数量。需要维持不变的提交就 pick，要丢弃的 drop，要压缩的 squash（目前我就用过这三个）。如果有 squash 的话，会再出来一次 vi 让编辑提交信息，可以留着压缩的提交信息，也可以全删了。

如果出错了，就退出去`git rebase --abort`。

最后务必强制推送`git push -f`，如果有 protected 一类的权限问题，就关掉再强制推送，不然会变成出现分岔需要 merge。
