#!/usr/bin/env bash
# Date: 2021-07-14 15:12:04
# Descriable: use crontab auto push for
# push_repo: @DOTFILES @note
# Author: @oeyoew

# color_begin='\e[1;32m'  # green forecolor
# color_off='\e[0m'

function color_echo() {
  # NOTE: printf not print
  printf "\e[35m %b \e[0m" $1
}

# alias echo="echo -e"

function echo_log() {
  # NOTE: second can't appear whitespace
cat>>log<<EOF
<<<
user: `whoami`
date: `date`
>>>

EOF
# echo -e "${color_begin} success $color_off"
color_echo "success  $PWD"
}

function repo() {
  # -n 判断是否有值
  # NOTE string
  if [ -n "`git status -s`" ]
  then
    (git add . 
    # &>/dev/null
    # git commit -m "This is a auto push for repo."
    git commit -m "This is a auto push for $PWD." 
    # &>/dev/null
    git push) &>/dev/null
    # in repo's directory, touch log and record
    test -f $PWD/log ||  { touch $PWD/log; echo "touch log in $PWD" >> $PWD/log; }
    echo_log
  else 
    echo -e "This repo is clean for $PWD\n"
  fi
}

function main() {
    cd ~/dotfiles
    repo
    cd ~/src/note
    repo
}

main

