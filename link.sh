#!/bin/bash

function Green_Success(){
  printf '\033[1;32;40m[success]==>  %b\033[0m\n' "$1";
}

function Yellow_Warnning(){
  printf '\033[1;33;40m[warnning]  %b\033[0m\n' "$1";
}

function Red_Error(){
  printf '\033[1;31;40m[error]  %b\033[0m\n' "$1";
  exit 1;
}

# ranger
function misc() {
  sudo cp -r ${PWD}/ranger ~/.config/
}

function link_vscode() {
  export VSCODE=~/.config/Code/User
  MS1="This vscode may be not installed, please install it!"
  MS5="success link vscode_configure"
  if [ ! -d ${VSCODE} ]; then
    mkdir -pv ${VSCODE}
    echo $MS1
  fi
  ln -si $PWD/settings.json ${VSCODE}/
  echo $MS5
}

function link_all_dotfiles_in_home() {
  MS2="Success link all dotfiles in home"
  ln -si $PWD/dotfiles/.* ~
  echo "$MS2"
}

function install_fonts() {
  # TODO ?
  mkdir ~/.fonts
  ln ....
  mkfontscale
  mkfontdir
  fc-cache -vf ~/.fonts
}

function print_logo() {

  echo '    __     _             __              __   '
  echo '   / /    (_)   ____    / /__   _____   / /_  '
  echo '  / /    / /   / __ \  / //_/  / ___/  / __ \ '
  echo ' / /___ / /   / / / / / ,<    (__  )  / / / / '
  echo '/_____//_/   /_/ /_/ /_/|_|  /____/  /_/ /_/  '
  echo '                                                  ... is now installed!'
  echo ''
  echo ''
  echo 'Just enjoy it!'
}

function main(){
  link_all_dotfiles_in_home
  link_vscode
  print_logo
  # Green_Success "FINSH"
}

main
