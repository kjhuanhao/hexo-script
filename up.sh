#/bin/bash
#author is huanhao
#by http://301technology.cn/
hexo clean
	echo "Successful execution of hexo clean"
hexo g
	echo "Successful execution of hexo g"
hexo d
	echo -e "\033[32mUpload successfully performed\033[0m"
	echo -e "\033[36mBut you had better check your github\033[0m"