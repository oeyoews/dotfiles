#!/usr/bin/env bash
# Date: 2021-07-14 15:12:04
# Descriable: use crontab auto push for
# push_repo: @DOTFILES @note
# Author: @oeyoew

color_begin='\e[1;32m'  # green
color_off='\e[0m'

function echo_log() {
  # NOTE: second can't appear whitespace
cat>log<<EOF
<<<
user: `whoami`
date: `date`

>>>
EOF
echo -e "${color_begin} success $color_off"
}

function repo() {
  # -n 判断是否有值
  if [ -n "`git status -s`" ]
  then
    git add .
    # git commit -m "This is a auto push for repo."
    git commit -m "This is a auto push for $PWD."
    git push
    # in repo's directory, touch log and record
    test -f $PWD/log ||  { touch $PWD/log; echo "touch log in $PWD" >> $PWD/log; }
    echo_log
  fi
}

function main() {
    cd ~/dotfiles
    repo
    cd ~/src/note
    repo
}

main

