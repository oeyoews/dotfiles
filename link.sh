#!/bin/bash
# 2021-07-08 14:57:21 

# ranger
function misc() {
  sudo cp -ir ${PWD}/ranger ~/.config/
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

function print_logo() {
  echo -e '\n'
  echo -e "\e[42m All configure file linkd successfully!^_^ \
    Just enjoy it!\e[0m"
}

function print_date() {
  echo  $(date)
}

function main(){ # NOTE: Function can't is empty

  link_all_dotfiles_in_home
  # link_vscode
  print_date
  # Green_Success demo
  # print_logo
  # Green_Success "FINSH"
}

main
