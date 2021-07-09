#!/usr/bin/bash
# 2021-07-08 15:41:09 

WHO="$(whoami)"

function file_judge() {
  rm -rf ${HOME}/.emacs.d_bk
  if [ -d ${HOME}/.vim ]; then
    mv ${HOME}/.vim ${HOME}/.emacs.d_bk
  fi
}

function install_emacs() {
  git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d --depth 1
  echo "Finish to intall oeyoews/.emacs.d for ${WHO}."
  echo "Just enjoy it!"
}

function main() {
  file_judge
  install_emacs
}

main
