#!/bin/bash
npm -v > C:\Program Files\nodejs 2>&1 && 
printf "\n\033[32mYou have successfully installed nodejs!\033[0m\n" && node -v|| 
printf "\033[31mnot found \n You can download and install it here at http://nodejs.cn/download/\033[0m" 


