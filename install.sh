#!/usr/bin/env bash

UserLocation=0
read -r -p "Are you sure to install dotfiles? 🍻 [y|N] " response
if [[ $response =~ (y|yes|Y) ]];then
  UserLocation=1
  print("Installing ... 💉")
fi

# TODO: add remove old or bk odl chezmoi and acquire user if to bk or delete
chezmoi init  --depth 1 https://gitlab.com/oeyoews/dotfiles.git
chezmoi apply
#chezmoi update -R

#main() {

#}

#main
