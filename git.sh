#!/bin/bash
#author is HuanHao
#by http://301technology.cn/
#https://hexoscript.github.io/
DIR=~/.ssh
PS3="Please enter a number to run:"
select i in "Key" "SSH" "Verify-github" "Verify-coding"; do
	
case $i in
	Key)
if [[ -d $DIR ]]; then
	echo -e "\033[31mYour key already exists\033[0m"
	cat ~/.ssh/id_rsa.pub
exit 
else
	echo -e "\033[32mFollow the instructions below\033[0m"&cd ~
fi
	read -p "Please input your email:" EMAIL
ssh-keygen -t rsa -C ${EMAIL}
git config --global user.email "$EMAIL"
	read -p "Please input your name:" NAME
git config --global user.name ${NAME}
	echo -e "\033[32mSet up successfull!\033[1m"
	echo "You need to add the key to the SSH keys"
exit
	 ;;
	SSH)
	cat ~/.ssh/id_rsa.pub
exit
	 ;;
     Verify-github)
     ssh -T git@github.com
exit
	 ;;
     Verify-coding) 
     ssh -T git@git.coding.net
     echo -e "\033[32mYou may encounter garbled code, please run [ssh -T git@git.coding.net] "
exit
     	 ;;
	 *)
	 ;;
esac
done






