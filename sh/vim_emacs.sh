#!/usr/bin/bash
# install spacevim spacemacs
# 2021-07-08 15:41:09 



function install_vim() {
  cd "$HOME" || exit
  git clone --branch=main --depth 1 https://gitee.com/oeyoews/vim.git ~/.vim
}

function install_emacs() {
  cd "$HOME" || exit
  git clone -b develop https://hub.fastgit.org/syl20bnr/spacemacs ~/.emacs.d --depth 1
  # https://git.sjtu.edu.cn/sjtug/spacemacs.git
}

function main() {
  install_vim
  install_emacs
  echo "Just enjoy it!"
}

main
