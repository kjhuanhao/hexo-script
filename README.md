# Hexo automatic installation script -windwos version documentation

![](https://cdn.jsdelivr.net/gh/huanhaokj/cdn/img/hexoscript.png)

![](https://img.shields.io/badge/version-v1.1-blue)
![](https://img.shields.io/github/size/kjhuanhao/hexo-script/install.sh)

[中文文档](https://github.com/kjhuanhao/hexo-script/blob/master/README_CN.md)/English documents

## Related websites

> 【hexo-script】Website：https://hexoscript.github.io/
>
> 【hexo-script】Using document：https://huanhaocode.gitbook.io/hexo-script/
>
> Domestic mirror：https://gitee.com/huanhaokj/hexo-script
>
> Image abroad：https://github.com/kjhuanhao/hexo-script

## The script is introduced

【hexo-script】 is a hexo blog automatic installation script, currently only support Windows system, you can use this script can be used to detect node environment, git environment, install hexo blog, one key to upload to github or coding, one key to generate SSH secret keys and other operations.

### There is no process to install the hexo blog using the [hexo-script] script

* execute npm install hexo-cli -g
* execute hexo init blog
* execute cd blog
* execute npm install

### Install the hexo blog `speed `process using the hexo-script

`Note`: you only need to execute two commands to complete the above complex operation

```shell
$ curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/install.sh
$ source install.sh hexo_win
```

***

### Version is introduced

Don't think there's no difference between two rivers and four rivers!

Watch the comparison below first.

| Contrast characteristics | Installation without scripts                                 | Installed using hexo-script                                  |
| ------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| The installation source  | The original instruction used NPM installation, foreign source speed is not ideal, initialization and installation is to dissuasion a large number of people. | Using the domestic CNPM installation, the domestic source speed is fast, the initial use of git clone instructions to increase the speed, installation using CNPM for installation. |
| Speed                    | Not using any Internet tools: you may need 10 minutes or more. | Install it for you in 2 minutes and run hexo s directly for viewing. |
| Function                 | Only hexo blogs can be installed.                            | It is capable of detecting node environment, git environment, installing hexo blog, one-click uploading to github or coding, one-click SSH secret key generation and other operations. |

***

### Directions for use

This script does not have the function of installing nodejs and git for the time being. You need to install nodejs and git tools before using this script. It is recommended to use this script to check whether the nodejs environment is correct .

After installing nodejs.Use this script, all instructions in git bash operation, otherwise there will be an error, you can use `Ctrl+Insert` paste commandSuggested 

that pure white full version of the user to see  [using document](https://huanhaocode.gitbook.io/hexo-script/). 

The use of if you have any questions or Suggestions can put forward to the [issues](https://github.com/kjhuanhao/hexo-script/issues/)

## Language description

> This script is all English for the time being, because in the test for many times, often appear Chinese garble code, so use all English, if you feel that do not understand the place can be copied down, and then use translation software to view the error or prompt information!

***

## The command that

`Note: `you need to execute this command to download the [hexo-script] script before running any commands.

```shell
curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/install.sh
```



* Detection of the node

```shell
source install.sh test_node
```

* Git detection environment

```shell
source install.sh test_git
```

* Install the hexo blog in one click

```shell
source install.sh hexo_win
```

* Download the one-click upload script

```shell
source install.sh downland_deploy
```

* Upload scripts with one click

```shell
source up.sh
```

* One key generates git secret key

```shell
source install.sh git_ssh
```

* See the help

```shell
source install.sh help
```

* View current and latest versions

```shell
source install.sh version
```

* The upgrade script

```shell
source install.sh update
```

***

## Open source with forwarding instructions

Please respect the author's hard work, please bring author: when open source and forward huanhao name and [source warehouse address ](https://github.com/kjhuanhao/hexo-script) Please Fork first thank you!

**how to open source merge?**

Please Fork this project first. After you update and upload, I will immediately **Create pull request**for you.You can also contact me at huanhaokj@vip.qq.com and send me your project address, I will find it faster!

***

## Other profile

The above is only part of the function or code demonstration, you can see the specific documentation:https://huanhaocode.gitbook.io/hexo-script/

## A donation/a meal

【WeChat】<img src = "http://301technology.cn/wp-content/uploads/2019/07/1058a552f136b122.jpg"  height="150" width="150" >

***

【Pay treasure】<img src = "http://301technology.cn/wp-content/uploads/2019/07/2129dcaedb9a0b9f.jpg" height="150" width="150" >

