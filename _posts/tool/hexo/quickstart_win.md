title: Hexo+GitHub速建博客(Win)
tags: 
- hexo
- git
categories: tool
-----------------

### 创建github账号
略

### 创建 yourname.github.io 仓库
略

### 安装git
下载地址：http://git-scm.com

一路next直到 "Ajusting your PATH environment" 步骤
勾选 "Use Git and optional Unix tools from the Windows Command Prompt"
接着一路next

<!-- more -->

### 安装 nodejs
下载地址：http://nodejs.cn

一路next即可

### 安装 hexo
所有命令都通过git bash控制台执行

``` bash
$ npm install -g hexo-cli
```
### 创建本地博客环境
在e:\myblog目录搭建博客环境，对应下面的/e/myblog

``` bash
$ cd /e && mkdir myblog && cd myblog
$ hexo init
$ npm install
```

### 本地试运行
``` bash
$ hexo s
```

至此，一个本地的helloworld博客即完成，查看效果访问：http://localhost:4000

### 发布到github
### 安装 hexo插件
``` bash
$ npm install hexo-deployer-git --save
```
#### 修改配置
``` bash
$ vim _config.yml
```
找到deploy项，并改为：
   deploy:
     type: git
     repository: git@github.com:yourname/yourname.github.io.git
     branch: master

#### 生成并发布
``` bash
$ hexo d -g
```

至此，基本的博客环境即已搭建完毕，查看效果访问 http://yourname.github.io
【注意】如果yourname.github.io是新建的，则可能不一定马上能访问！

### 后续
- git免密码
- 发文章
- 主题
- 插件
- 订阅
