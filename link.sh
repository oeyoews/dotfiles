#!/bin/bash
# 2021-07-08 14:57:21 

function Green_Success(){
  printf '\033[1;32;40m[Success]  %b\033[0m\n' "$1";
}

function Yellow_Warnning(){
  printf '\033[1;33;40m[Warnning]  %b\033[0m\n' "$1";
}

function Red_Error(){
  printf '\033[1;31;40m[Error]  %b\033[0m\n' "$1";
  exit 1;
}

# ranger
function misc() {
  sudo cp -ir ${PWD}/ranger ~/.config/
}

function link_vscode() {
  export VSCODE=~/.config/Code/User
  MS1="This vscode may be not installed, please install it!"
  MS5="success link vscode_configure"
  if [ ! -e ${VSCODE} ]; then
    mkdir -pv ${VSCODE}
    echo $MS1
  fi
  ln -si $PWD/settings.json ${VSCODE}/
  echo $MS5
}

function link_all_dotfiles_in_home() {
  MS2="Success link all dotfiles in home"
  ln -si $PWD/dotfiles/.[a-zA-Z]* ~ 
  # : can't use .* in git dir, because it can ln . and .. dir.
  # :so, must be put them in another dir, to avoid dir like .git and .gitconfig and so on
  # : can't use * to instead of dot, because it can't to instead it use ==> .[a-zA-Z]*
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

function print_finish() {
  echo -e '\n'
  echo -e "\e[42m All configure file linkd successfully!^_^ \
    Just enjoy it!\e[0m"
  }

function print_date() {
  echo  $(date)
}

function main(){ 
# NOTE: Function can't is empty
  WHO="$(whoami)"
  read -t 20 -sp "Please input the computer's username(in 20 seconds): " username 
  if [ $username == $WHO ]; then
    Green_Success "Username is correct. Start to exectue this link.sh"
    link_all_dotfiles_in_home
    link_vscode
    print_date
    print_finish
  else
    Red_Error "Your input is not correct!"
  fi
}

main
