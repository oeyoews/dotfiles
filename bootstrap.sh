#!/usr/bin/env bash

set -e # exit status if not 0, exit
set -u # if variable is not define, show error
# set -v # show verbose info for sh
# set -n # just read sh, but not execute this sh,  just like breakpoint

function rm_config() {
  # NOTE: input `\` , enter directly ,can't add whitespace
  # NOTE: last line can't add `\`
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
  }

function stow_first() {
  stow crontab
  stow emacs
  stow fcitx
  stow git
  stow idea
  stow npm
  stow tmux
  stow zsh
}

function misc() {
  stow vscode
  stow ranger
}
function main() {
  rm_config
  stow_first
  misc
}

main
