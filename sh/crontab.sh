#!/usr/bin/env bash
# Date: 2021-07-14 15:12:04
# Descriable: use crontab auto push for
# push_repo: @dotfiles @note
# Author: @oeyoew

set -e

function color_echo() {
  # NOTE: printf not print
  printf "\e[35m %b \e[0m" "$1"
}

function echo_log() {
  # NOTE: second can't appear whitespace
  cat>>"$PWD"/log<<EOF
<<<
user: $(whoami)
date: $(date)
>>>

EOF
# echo -e "${color_begin} success $color_off"
color_echo "success  for '$PWD'\n"
}

function repo() {
  # -n 判断是否有值
  # NOTE string
  if [ -n "$(git status -s)" ]
  then
    (git add . 
    git commit -m "This is a auto push for '$PWD'." 
    git push) &>>"$PWD/log"
    # in repo's directory, touch log and record
    test -f "$PWD/log" ||  { touch "$PWD/log"; echo "touch log in '$PWD'" >> "$PWD/log"; }
  else 
    echo -e "This repo is clean for '$PWD/log' \n"
  fi
  echo_log
}

function main() {
  cd ~/dotfiles || exit
  repo
  cd ~/src/note || exit
  repo
  echo -e "\n\e[32mTime: $SECONDS\n\e[0m"
}

main

