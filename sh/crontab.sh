#!/usr/bin/env bash
# Date: 2021-07-14 15:12:04
# Descriable: crontab auto push for
# push_repo: @dotfiles @note
# Author: @oeyoew

set -e

function repo() {
    git add . 
    git commit -m "This is a auto push." 
    git push 
    echo '===end'
}

function emacs_update() {
 cd ~/.emacs.d/ || exit 
 git pull 
}

function main() {
  cd ~/dotfiles || exit
  repo
  cd ~/src/note || exit
  repo
  emacs_update
  echo "$(SECONDS)"
  # if
}

main

