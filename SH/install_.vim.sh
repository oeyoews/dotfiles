#!/usr/bin/bash
# 2021-07-08 15:41:09 

IP="https://hub.fastgit.org/oeyoews/.vim"
WHO="$(whoami)"

function file_judge() {
  rm -rf ${HOME}/.vim_bk
  if [ -d ${HOME}/.vim ]; then
    mv ${HOME}/.vim ${HOME}/.vim_bk
  fi
}

function install_vim() {
  git clone --depth 1 ${IP} ${HOME}/.vim # NOTO add '.vim'
  echo "Finish to intall oeyoews/.vim for ${WHO}."
  echo "Just enjoy it!"
}

function main() {
  file_judge
  install_vim
}

main
