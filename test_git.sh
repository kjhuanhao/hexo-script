#!/bin/bash
git --version > C:\Program Files 2>&1 && 
printf "\033[32m\nYou have successfully installed git!\033[0m\n" && git --version|| 
printf "\033[31mnot found \n You can download and install it here at https://git-scm.com/\033[0m" 

