#!/bin/bash

red=`tput setaf 196`
red1=`tput setaf 1`
green=`tput setaf 277`
yellow=`tput setaf 11`
cyan=`tput setaf 046`
reset=`tput sgr0`
echo "${red}
┌────────────────────────────────────────────────────┐
│┏━╸┏┓    ╻ ╻╻╺┳┓┏━╸┏━┓   ╺┳┓┏━┓╻ ╻┏┓╻╻  ┏━┓╺┳┓┏━╸┏━┓│
│┣╸ ┣┻┓╺━╸┃┏┛┃ ┃┃┣╸ ┃ ┃    ┃┃┃ ┃┃╻┃┃┗┫┃  ┃ ┃ ┃┃┣╸ ┣┳┛│
│╹  ┗━┛   ┗┛ ╹╺┻┛┗━╸┗━┛   ╺┻┛┗━┛┗┻┛╹ ╹┗━╸┗━┛╺┻┛┗━╸╹┗╸│
└────────────────────────────────────────────────────┘
                                
    ${reset}"
echo "${green}Enter the url of the video : "    
read url
echo "${green}Enter the name you want to give : "
read name
PS3='Please enter your operating platform : '
options=("Termux" "Linux" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Termux")
            echo "you chose choice $opt"
            fbdown $url --output /sdcard/FBVideo/$name.mp4
            break
            ;;
        "Linux")
            echo "you chose choice $opt"
            fbdown $url --output FBVideo/$name.mp4
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done  
    
