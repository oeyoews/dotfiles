#!/usr/bin/env bash

# Dec: git submodule
function git_init() {
  git submodule init --update
}

# Dec: install your all config
function init_stow() {

  # TODO: just this file
  # TODO: acknowledgement your path in dotfiles, not depend you absolute path
  #mv ~/.zshrc
  stow omz
}

main() {
  git_init
  init_stow
}

#main
