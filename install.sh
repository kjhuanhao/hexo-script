#!/bin/bash
#author is huanhao
#by http://301technology.cn/
INSTALL_NAME=$1
INSTALL_VERSION=$2
#当前版本
script_version="v1.0"

#测试nodejs环境
function test_node()
{
	if [[ $2 == "" ]]; then
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/${INSTALL_NAME}.sh | sh -s test_node.sh
	
else
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/${INSTALL_NAME}.sh | sh -s test_node.sh
	fi
}
#测试git环境
function test_git()
{
	if [[ $2 == "" ]]; then
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/${INSTALL_NAME}.sh | sh -s test_git.sh
else
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/${INSTALL_NAME}.sh | sh -s test_git.sh

	fi
}
#安装hexoblog_win
function hexo_win()
{
	if [[ $2 == "" ]]; then
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/${INSTALL_NAME}.sh | sh -s hexo_win.sh
else
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/${INSTALL_NAME}.sh | sh -s hexo_win.sh

	fi
}
#下载一键上传脚本
function downland_up()
{
	if [[ $2 == "" ]]; then
	curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/up.sh
	echo -e "\033[32mOne click upload script downloaded successfully\033[0m"
else
	curl -O https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/up.sh
	echo -e "\033[32mOne click upload script downloaded successfully\033[0m"
	fi
}
#生成SSH脚本
function git_ssh()
{
		if [[ $2 == "" ]]; then
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script/${INSTALL_NAME}.sh | sh -s git.sh
else
	curl -s https://cdn.jsdelivr.net/gh/kjhuanhao/hexo-script@${INSTALL_VERSION}/${INSTALL_NAME}.sh | sh -s git.sh

	fi
}
function help()
{
	

	echo "======================= Shell Scripts ======================="
				printf "You can choose a scripts:\n"
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'test_node' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'test_git' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'hexo_install_windows' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'Downland_Upload_script' '' 
				printf "  \033[1m\033[32m%s\033[0m %s \t %s \n" 'git_ssh' '' 
				printf "\n"
				printf "Be careful:\n"
				printf "You can add a version number to the end of the script, separated by spaces\n"
				printf "\n"
				printf "Install the latest version by default without a version number\n"
				printf "\n"
				printf "For example:\n"
				printf ">\033[36m ./install.sh test_node\n\033[0m"
echo '-------------------------------------------------------------'
}

case $1 in
	        test_node)
	test_node
		 ;;
		test_git)
	test_git
		 ;;
		hexo_install_windows)
	hexo_win
		;;
		Downland_Upload_script)
	downland_up
		;;
		git_ssh)
	git_ssh
		;;
		help)
	help
		;;
		*)
		 ;;
esac

