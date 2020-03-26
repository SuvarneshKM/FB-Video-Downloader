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
    
PS3='Please enter your operating platform : '
options=("Termux" "Linux" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Termux")
            echo "you chose choice $opt"
            apt-get update
            apt-get upgrade
            termux-setup-storage
            mkdir /sdcard/FBVideo
            pkg install python
            pip install --upgrade pip
            pip install fb-down
            break
            ;;
        "Linux")
            echo "you chose choice $opt"
            echo "${red}pip3 should be installed ${reset}"
            mkdir FBVideo
            sudo pip3 install fb-down
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done  

echo "${red}You Can Run The tool by using : ${cyan}bash fb.sh${reset}"
