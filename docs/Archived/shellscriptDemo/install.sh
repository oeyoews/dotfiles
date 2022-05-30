#!/usr/bin/env bash

# TODO: can be select softwart what you want to install
set -e
# sh -c "$(curl -fsSl https://raw.githubusercontent.com/oeyoews/dotfiles/main/install.sh)"

## stow TODO
function dotfiles() {
  git clone --depth 1 https://github.com/oeyoews/dotfiles.git/ ~
  cd dotfiles || exit 0
}

## Dec
# TODO
function WdDict() {
  URL= ts
  git clone --depth 1 ${URL}
}

main () {
  dotfiles
}

# entry
main

