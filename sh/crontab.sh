#!/usr/bin/env bash
# Date: 2021-07-14 15:12:04
# Descriable: crontab auto push for
# push_repo: @dotfiles @note
# Author: @oeyoew

set -e

function color_echo() {
  printf "\e[35m %b \e[0m" "$1"
}

function echo_log() {
  cat>>log<<EOF
=====
user: $(whoami)
date: $(date)
=====

EOF
color_echo "success  for '$PWD'\n"
}

function repo() {
  if [ -n "$(git status -s)" ]
  then
    (git add . 
    git commit -m "This is a auto push for '$PWD'." 
    git push) &>>"$PWD/log"
  else 
    echo -e "This repo is clean for '$PWD/log' \n"
  fi
  echo_log
}

function emacs_pull() {
 cd ~/.emacs.d/ || exit 
 git pull &>/dev/null
}

function main() {
  cd ~/dotfiles || exit
  repo
  cd ~/src/note || exit
  repo
  emacs_pull
  echo -e "\n\e[32mTime: $SECONDS\n\e[0m"
  # if
}

main

