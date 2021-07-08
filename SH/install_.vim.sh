#!/usr/bin/bash
# 2021-07-08 15:41:09 

IP="https://hub.fastgit.org/oeyoews/.vim"
WHO="$(whoami)"

function file_judge() {
  if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim_bk
  fi
}

function install_vim() {
  git clone --depth 1 ${IP}
  echo "Finish to intall oeyoews/.vim for ${WHO}."
  echo "Just enjoy it!"
}

function main() {
  file_judge
  install_vim
}

main
