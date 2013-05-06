#!/usr/bin/env bash
# encoding: utf-8
#export HOME="/cygdrive/c/Users/user/Desktop"
export PYTHONSTARTUP="$HOME/.pythonrc"
#export PATH=$PATH:/cygdrive/c/Program\ Files/EttercapNG
export PS1="\[\e[1;32m\]\#\[\e[00m\]\[\e[0;31m\][\[\e[00m\]\[\e[0;39m\]\t\[\e[00m\] \[\e[1;34m\]\u\[\e[00m\]\[\e[0;31m\] \[\e[0;37m\]\w\[\e[00m\]\[\e[0;31m\]]\[\e[00m\]\[\e[1;37m\]\$ \[\e[00m\]"
export LANG=ja_JP.UTF-8
export LANGUAGE=ja_JP.UTF-8
alias l=ls
alias ks=ls
alias sl=ls
alias ls="ls --color -F"
alias cd..="cd .."
alias xs=cd
alias vf=cd
#alias apt-get=apt-cyg
alias vi=vim
alias netcat="ncat"
alias nc="ncat"
alias exifdel="exiftool -all= "
alias script='TIMER=$(date "+%Y%m%d_%H%M%S");script -t 2> ${TIMER}.time ${TIMER}.console;'
alias javac="javac -encoding UTF-8 "
