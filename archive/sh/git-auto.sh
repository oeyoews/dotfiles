#!/usr/bin/env bash
# Date: 2021-07-14 15:12:04
# Repo: @dotfiles @note

# if exit status is nil, exit: set -e

function repo() {
    git add .
    git commit -m "This is a auto push."
    git push
    echo '===End==='
}

function main() {
#   cd ~/dotfiles || exit
#   repo
  cd ~/repo/note || exit
  repo
  echo $SECONDS
}

main
