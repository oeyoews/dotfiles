#!/usr/bin/env bash

set -e # exit status if not 0, exit
set -u # if variable is not define, show error
# set -v # show verbose info for sh
# set -n # just read sh, but not execute this sh,  just like breakpoint
# sh -n shell_name.sh  # debug sh( syntax error)
# sh -vs shell_name.sh # dubug all
# `:` use to instead of placeholder , like pass in python
# set -eu

function rm_config() {
  rm -rfv ~/.crontab.conf \
    ~/.spacemacs \
    ~/.pam_environment \
    ~/.gitconfig \
    ~/.ideavimrc \
    ~/.npmrc \
    ~/.config/Code/User/setting.json \
    ~/.config/ranger \
    ~/.omz ~/.zshrc \
    ~/.tmux.conf 

  echo -e "Execute Time for $0 : \e[35m $SECONDS \e[0m seconds"
}

function stow_first() {
  # stow crontab_load emacs git_config ideavimrc npmirror tmux omz
  echo -e "\e[32msuccess for stow\e[0m"
}

function misc() {
  stow vscode_cnf ranger
}
function main() {
  rm_config
  cd ~/dotfiles || exit
  stow_first
  misc
}

# main
