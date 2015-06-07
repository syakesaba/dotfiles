#!/usr/bin/env bash
# encoding: utf-8

color_off='\e[0m'       # Text Reset
color_txtblk='\e[0;30m' # Black - Regular
color_txtred='\e[0;31m' # Red
color_txtgrn='\e[0;32m' # Green
color_txtylw='\e[0;33m' # Yellow
color_txtblu='\e[0;34m' # Blue
color_txtpur='\e[0;35m' # Purple
color_txtcyn='\e[0;36m' # Cyan
color_txtwht='\e[0;37m' # White
color_bldblk='\e[1;30m' # Black - Bold
color_bldred='\e[1;31m' # Red
color_bldgrn='\e[1;32m' # Green
color_bldylw='\e[1;33m' # Yellow
color_bldblu='\e[1;34m' # Blue
color_bldpur='\e[1;35m' # Purple
color_bldcyn='\e[1;36m' # Cyan
color_bldwht='\e[1;37m' # White
color_unkblk='\e[4;30m' # Black - Underline
color_undred='\e[4;31m' # Red
color_undgrn='\e[4;32m' # Green
color_undylw='\e[4;33m' # Yellow
color_undblu='\e[4;34m' # Blue
color_undpur='\e[4;35m' # Purple
color_undcyn='\e[4;36m' # Cyan
color_undwht='\e[4;37m' # White
color_bakblk='\e[40m'   # Black - Background
color_bakred='\e[41m'   # Red
color_bakgrn='\e[42m'   # Green
color_bakylw='\e[43m'   # Yellow
color_bakblu='\e[44m'   # Blue
color_bakpur='\e[45m'   # Purple
color_bakcyn='\e[46m'   # Cyan
color_bakwht='\e[47m'   # White
color_txtrst='\e[0m'    # Text Reset

#export HOME="/cygdrive/c/Users/user/Desktop"
export PYTHONSTARTUP="$HOME/.pythonrc"
#export PATH=$PATH:/cygdrive/c/Program\ Files/EttercapNG
export PS1="\[$color_bldblu\]\#\[$color_off\]\[$color_txtred\][\[$color_off\]\[$color_bldgrn\]\t\[$color_off\] \[$color_bldblu\]\u\[$color_off\]\[$color_txtred\]@\[$color_off\]\[$color_bldgrn\]\w\[$color_off\]\[$color_txtred\]]\[$color_off\]\[$color_txtcyn\]\$ \[$color_off\]"
#export LANG=ja_JP.UTF-8
#export LANGUAGE=ja_JP.UTF-8
alias l=ls
alias ks=ls
alias sl=ls
alias ls="ls --color -F"
alias cd..="cd .."
alias xs=cd
alias vf=cd
alias grep="grep --color"
alias fgrep="fgrep --color"
alias egrep="egrep --color"
#alias apt-get=apt-cyg
alias vi=vim
alias vim="vim -O"
alias vimo="vim -o"
alias netcat="ncat"
alias nc="ncat"
alias exifdel="exiftool -all= "
alias script='TIMER=$(date "+%Y%m%d_%H%M%S");script -t 2> ${TIMER}.time ${TIMER}.console;'
alias javac="javac -encoding UTF-8 "
alias ssh="ssh -C "
alias sftp="sftp -C "
