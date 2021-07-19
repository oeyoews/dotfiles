#!/usr/bin/env bash

# Date: 2021-07-14 15:12:04
# Descriable: use crontab auto push for 
# push_repo: @DOTFILES @note
# Author: @oeyoew

function repo() {
  git add .
  git commit -m "This is a auto push for repo."
  git push
  test -f $PWD/log ||  { touch $PWD/log; echo "touch log in $PWD" >> $PWD/log; }
  echo  -e "<<<\nUser: $(whoami)\nDate:$(date)\nSuccess for crontab\n>>>\n" >> $PWD/log
}

function main() {
  cd $HOME/src/DOTFILES
  repo
  cd $HOME/src/note
  repo
}

main
