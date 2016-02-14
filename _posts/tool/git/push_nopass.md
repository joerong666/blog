title: Windows Git Bash Push 免用户名密码
tags: git
categories: tool
---
## 创建文件存储GIT用户名和密码

用git bash编辑~/.git-credentials文件，如下：

``` bash
$ vim ~/.git-credentials
```
添加以下内容：

    https://yourname:password@github.com

(yourname here is not an email)

## 添加Git Config 内容

进入git bash终端， 输入如下命令：

``` bash
$ git config --global credential.helper store
```

执行完后查看%HOME%目录下的.gitconfig文件，会多了一项：

    [credential]
        helper = store

重新开启git bash会发现git push时不用再输入用户名和密码。如果没有这一项，则手工添加

