#!/usr/bin/env bash

# Date: 2021-07-08 14:57:21
# Modify time: 2021-07-16 16:27:58 
# Descriable: link dotfiles
# Version: 1.0

# ranger
function ranger() {
  ranger_path=~/.config/ranger
  test -d $ranger_path && rm -rf $ranger_path 
  ln -si  $PWD/ranger ~/.config/ranger
}

# vscode settings.json
function vscode() {
  vscode=~/.config/Code/User
  test -d $vscode || mkdir -pv $vscode
  ln -si $PWD/settings.json ${vscode}/
}

# dotfiles
function dotfiles() {
  msg_2="Success link all dotfiles in home"
  ln -si $PWD/dotfiles/.[a-z]* ~
  echo "$msg_2"
}

function finish() {
  echo -e "\n\e[42mAll configure file linkd successfully!^_^ Just enjoy it!\e[0m"
    }

function user() {
  read -t 20 -p "Input username: " user
  [[ $user == $(whoami) ]] || exit 1
}

function main(){
  user
  # ranger
  # vscode
  # dotfiles
  finish
}

main
