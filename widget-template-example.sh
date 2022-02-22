#!/bin/sh
# Date: 2022-02-22

function title {
  echo -e "\033[1m$1\033[0m"
}

function color {
  case $1 in
    black)
      echo -ne "\033[0;30m"
    ;;
    red)
      echo -ne "\033[0;31m"
    ;;
    green)
      echo -ne "\033[0;32m"
    ;;
    yellow)
      echo -ne "\033[0;33m"
    ;;
    blue)
      echo -ne "\033[0;34m"
    ;;
    purple|magenta)
      echo -ne "\033[0;35m"
    ;;
    cyan)
      echo -ne "\033[0;36m"
    ;;
    grey|gray|white)
      echo -ne "\033[0;37m"
    ;;
    *)
      echo -ne "\033[0m"
    ;;
  esac
}

# echo -e '\033[0J'
# echo -e '\033[1J'
# echo -e '\033[2J'
echo -ne '\033[3J\033[H'

title Web
color green
hyper https://github.com/xVermillionx     · GitHub
hyper https://discord.com/                · Discord
hyper https://vid.puffyan.us/feed/popular · Better Youtube
color

title Projects
color purple
hyper $HOME/Git                           · Git
echo -n '  ' && hyper $HOME/Git/project1    · mako-config
echo -n '  ' && hyper $HOME/Git/project2    · mako-config
color

tput civis
read -n1
echo -ne '\033[3J\033[H'
tput cnorm
