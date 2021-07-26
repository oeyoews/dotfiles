#!/usr/bin/bash
# install spacevim spacemacs
# 2021-07-08 15:41:09 



function install_vim() {
  cd "$HOME" || exit
  git clone --depth 1 https://gitlab.com/oeyoews/.vim.git
}

function install_emacs() {
  cd "$HOME" || exit
  git clone -b develop https://hub.fastgit.org/syl20bnr/spacemacs ~/.emacs.d --depth 1
}

function main() {
  install_vim
  install_emacs
  echo "Just enjoy it!"
}

main
