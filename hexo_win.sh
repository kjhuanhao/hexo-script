#/bin/bash
#author is huanhao
# by htttp://301technology.cn/
#https://hexoscript.github.io/
DIR=./hexoblog
#安装CNPM
function cnpm_install ()
{
	printf "\n> \033[32mInstalling cnpm environment...\033[0m\n"
	npm install -g cnpm --registry=https://registry.npm.taobao.org
	echo -e "\033[32mcnpm installed successfully!\033[0m"

}
#全局安装hexo
function hexo_install ()
{
	printf "\n> \033[32mInstalling hexo environment globally...\033[0m\n"
	cnpm install hexo-cli -g
	echo -e "\033[32mSuccessful installation of hexo!\033[0m"
}
#初始化博客
function init()
{
	printf "\n> \033[32mInitializing blog...\033[0m\n"
	git clone https://github.com/huanhaokj/hexoblog.git
}
#检测blog并安装
function check_blog()
{
if [[ -d $DIR ]]; then
	echo -e "\033[32mBlog file created successfully!\033[0m"&&cd hexoblog
	printf "\n \033[32mInstalling blog...\033[0m"
	cnpm install
	echo -e "Blog installation complete!"
	echo -e "\033[32mPlease run hexo s to check it out!\033[0m" 
else
	echo -e "\033[31mError: your blog file was not created!\033[0m"
	printf "\n> \033[32mWe're creating it for you in a different way...\033[0m\n"
	hexo init hexoblog
	if [[ -d $DIR ]]; then
	echo -e "\033[32mSuccessful installation of blog\033[0m"&&cd hexoblog
	printf "\n \033[32mInstalling blog...\033[0m"
	cnpm install
	cnpm install hexo-deployer-git --save
	echo -e "Blog installation complete!"
	echo -e "\033[32mPlease run hexo s to check it out!\033[0m" 
else
	echo -e "\033[31mError: your blog file is still not created, please check it yourself\033[0m"
	exit
	fi
fi
}

cnpm_install
hexo_install
init
check_blog

