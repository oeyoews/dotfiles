#!/usr/bin/env bash

# Date: 2021-07-08 14:57:21
# Modify time: 2021-07-16 16:27:58 
# Descriable: link dotfiles
# Version: 1.0
# TODO: how to interactive

set -e 

function ranger() {
  ranger_path=~/.config/ranger
  test -d $ranger_path && rm -rf $ranger_path 
  ln -sf  $PWD/ranger ~/.config/ranger
}

# dotfiles
function dotfiles() {
  hide_files="`find $PWD/dotfiles -maxdepth 1 -name ".*" `"
  msg_2="Success link all dotfiles in home"
  ln -sf $hide_files ~
  echo "$msg_2"
}

function main(){
  # ranger
  # dotfiles
  echo -e "\n\e[42mAll configure file linkd successfully!^_^ Just enjoy it!\e[0m"
}

main
