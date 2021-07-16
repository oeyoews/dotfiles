#!/usr/bin/env bash
# Date: 2021-07-08 14:57:21
# Descriable: link dotfiles

# ranger
function ranger() {
  # NOTE: any Function can't is empty
  # need password
  sudo rm -rf ~/.config/ranger
  sudo cp -r ${PWD}/ranger ~/.config/ranger
}

# vscode settings.json
function vscode() {
  vscode=~/.config/Code/User
  test -d $vscode || mkdir -pv $vscode
  ln -si $PWD/settings.json ${vscode}/
}

# dotfiles
function dotfiles() {
  # . instead of all symbols, not itself
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
