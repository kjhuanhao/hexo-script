#!/bin/bash
#author is huanhao
#by http://301technology.cn/
#https://hexoscript.github.io/
INSTALL_NAME=$1
INSTALL_VERSION=$2
#当前win版本
script_version="1.31"
#最新版本
test_v=`curl -s https://kjhuanhao.github.io/hexo-script/version_win.html`

#测试nodejs环境
function test_node()
{
	if [[ $2 == "" ]]; then
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${script_version}/${INSTALL_NAME}.sh | sh -s test_node.sh
	
else
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/${INSTALL_NAME}.sh | sh -s test_node.sh
	fi
}
#测试git环境
function test_git()
{

	if [[ $2 == "" ]]; then
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${script_version}/${INSTALL_NAME}.sh | sh -s test_git.sh
else
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/${INSTALL_NAME}.sh | sh -s test_git.sh

	fi
}
#安装hexoblog_win
function hexo_win()
{
	if [[ $2 == "" ]]; then
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${script_version}/${INSTALL_NAME}.sh | sh -s hexo_win.sh
else
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/${INSTALL_NAME}.sh | sh -s hexo_win.sh

	fi
}
#下载一键上传脚本
function downland_up()
{
	if [[ $2 == "" ]]; then
	curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${script_version}/up.sh
	echo -e "\033[32mDeploy-script downloaded successfully\033[0m"
	printf "\033[32mYou can run [ ./up.sh ] to deploy!\033[0m"
else
	curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/up.sh
	echo -e "\033[32mOne click upload script downloaded successfully\033[0m"
	fi
}
#生成SSH脚本
function git_ssh()
{
		if [[ $2 == "" ]]; then
	curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${script_version}/git.sh && source ./git.sh
else
	curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/git.sh && source ./git.sh

	fi
}
function help()
{
	

	echo "======================= hexo-script menu ======================="
				printf "You can choose a scripts:\n"
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'test_node' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'test_git' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'hexo_win' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'deploy' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'git_ssh' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'version' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'update' '' 
				printf "\n"
				printf "Be careful:\n"
				printf "\033[36mYou can see our instructions\n> https://hexoscript.github.io/\n\033[0m"
				printf "\n"
				printf "Please run source install.sh and the script you want to run, separated by spaces.\n"
				printf "\n"
				printf "For example:\n"
				printf ">\033[36m[ source install.sh test_node ]\n\033[0m"
echo '----------------------------------------------------------------'
}
#版本查看
function version()
{
	for line in `curl -s https://kjhuanhao.github.io/hexo-script/version_win.html`
do
printf "Your version is $script_version for windows \n >The latest version is $line"
	
done
if [[ "$script_version" == "$line" ]]; then
	printf "\033[36m\nCongratulations, it's the latest version!\033[0m"
else
	printf "\033[31m\nYou can run [ ./install.sh update ] to update the version\033[0m"
fi

}
#检测错误
if [[ "$1" = "" ]]; then
	help
fi
#下载最新版本的压缩包
function update()
{
	curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${test_v}/install.zip
	echo -e "\033[32mDownload successfully! Please unzip.\033[0m"
}



case $1 in
	        test_node)
	test_node
		 ;;
		test_git)
	test_git
		 ;;
		hexo_win)
	hexo_win
		;;
		deploy)
	downland_up
		;;
		git_ssh)
	git_ssh
		;;
		help)
	help
		;;
		version)
	version
		;;
		update)
	update
		;;
		*)
		 ;;
esac

