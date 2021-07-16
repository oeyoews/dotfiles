#!/usr/bin/env bash

# Date: 2021-07-14 15:12:04
# Descriable: use crontab auto push for 
# push_repo: @DOTFILES @note
# Author: @oeyoew

function test_file() {
  # test
  # -o == ||; -a == &&  分号 用于分割命令或者表达式
  [ -f ~/src/DOTFILES/ -a -f ~/src/note ] || echo "No such file exist"
  test -f log ||  { touch log; echo "touch log in $PWD" >> log; }
}

function repo() {
  # git
  git add .
  git commit -m "This is a auto push for repo."
  git push
  echo  -e "<<<\nUser: $(whoami)\nDate:$(date)\nSuccess for crontab\n>>>\n" >> $PWD/log
}

function main() {
  test_file
  cd $HOME/src/DOTFILES
  repo
  cd $HOME/src/note
  repo
}

main
