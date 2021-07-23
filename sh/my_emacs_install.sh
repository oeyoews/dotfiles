#!/usr/bin/bash
# descriable: emacs install_emacs
# 2021-07-08 15:41:09 

function install_emacs() {
  cd "$HOME" || exit
  git clone -b develop https://hub.fastgit.org/syl20bnr/spacemacs ~/.emacs.d --depth 1
  echo "Just enjoy it!"
}

function main() {
  install_emacs
}

main
