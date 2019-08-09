# hexo自动安装脚本-windwos版说明文档



![](https://cdn.jsdelivr.net/gh/huanhaokj/cdn/img/hexoscript.png)

![](https://img.shields.io/badge/version-v1.1-blue)![](https://img.shields.io/github/size/kjhuanhao/hexo-script/install.sh)

中文文档/[English documents](https://github.com/kjhuanhao/hexo-script/blob/master/README.md)

## 相关网站

> 【hexo-script】网站：https://hexoscript.github.io/
>
> 【hexo-script】使用文档：https://huanhaocode.gitbook.io/hexo-script/
>
> 国内镜像：https://gitee.com/huanhaokj/hexo-script
>
> 国外镜像：https://github.com/kjhuanhao/hexo-script

## 脚本介绍

【hexo-script】是一个hexo博客的自动安装脚本,目前只支持windows系统，您可以使用本脚本进行可以进行检测node环境、git环境、安装hexo博客、一键上传到github或coding、一键生成ssh秘钥等操作。

### 没有使用【hexo-script】脚本安装hexo博客的过程

- 执行npm install hexo-cli -g
- 执行hexo init blog
- 执行cd blog
- 执行npm install

***

### 使用【hexo-script】脚本安装hexo博客的`极速`过程

注意：您只需要执行两条命令即可完成上面的复杂操作

```shell
$ curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/install.sh
$ source ./install.sh hexo_win
```

***

### 版本介绍

不要认为执行两条河执行四条没有区别哦！

您先看好下面的对比就知道了

| 对比特点 | 未使用脚本的安装                                             | 使用了【hexo-script】的安装                                  |
| -------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 安装源   | 原指令使用npm安装，国外源速度十分不理想，初始化和安装更是劝退了一大批人。 | 使用国内的cnpm安装，国内源速度快，初始化使用了git clone指令增快速度，安装使用cnpm进行安装。 |
| 速度     | 未使用任何上网工具：您可能需要10分钟甚至更长的时间。         | 2分钟之内为您安装完成，可直接运行hexo s查看。                |
| 功能     | 只能安装hexo博客。                                           | 可以进行检测node环境、git环境、安装hexo博客、一键上传到github或coding、一键生成ssh秘钥等操作。 |

***

## 使用说明

本脚本暂时未带有安装nodejs和安装git的功能，您需要先安装nodejs和git工具才能使用本脚本，建议安装nodejs完成后使用本脚本检测nodejs环境是否正确。

使用本脚本时，所有的指令请在git bash中操作，否则会出现错误，可以使用`Ctrl+Insert`粘贴命令

建议纯小白的用户先看完整版的[使用文档](https://huanhaocode.gitbook.io/hexo-script/)。

如果你有任何的使用问题或建议可以到[issues](https://github.com/kjhuanhao/hexo-script/issues/ )提出

### 语言说明

> 本脚本暂时是全英文版，因为在多次地测试中，经常出现中文乱码，所以采用全英文，如果有觉得看不懂的地方均可以复制下来，然后使用翻译软件查看错误或提示信息！

***

### 命令说明

`注意：`在运行所有命令之前您需要执行下面这条命令来下载【hexo-script】脚本

```
curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/install.sh
```



* 检测node

```shell
./install.sh test_node
```

* 检测git环境

```
./install.sh test_git
```

* 一键安装hexo博客

```shell
source ./install.sh hexo_win
```

* 下载一键上传脚本

```
./install.sh downland_deploy
```

* 使用一键上传脚本

```
./up.sh
```

* 一键生成git秘钥

```
./install.sh git_ssh
```

* 查看帮助

```
./install.sh help
```

* 查看当前和最新版本

```
./install.sh version
```

* 升级脚本

```
./install.sh update
```

***

## 开源与转发说明

请尊重作者的辛苦付出，开源和转发时请带上作者：huanhao的名称和[源仓库](https://github.com/kjhuanhao/hexo-script)地址，建议先Fork谢谢！

**如何开源合并？**

请先Fork本项目，等待你更新上传后，我会在第一时间为你**Create pull request**（拉取请求）

你也可以联系我的邮箱：huanhaokj@vip.qq.com 发送你的项目地址给我，我会更快地发现！

***

## 其他概要

以上只是部分的功能或代码展示，具体的使用文档您可以查看：https://huanhaocode.gitbook.io/hexo-script/

### 捐赠/恰饭QWQ

【微信】<img src = "http://301technology.cn/wp-content/uploads/2019/07/1058a552f136b122.jpg"  height="150" width="150" >

***

【支付宝】<img src = "http://301technology.cn/wp-content/uploads/2019/07/2129dcaedb9a0b9f.jpg" height="150" width="150" >