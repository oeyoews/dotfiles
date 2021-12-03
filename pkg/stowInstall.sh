#!/usr/bin/env bash

#clone() {
  #git clone --depth 1 https://github.com/aspiers/stow.git ~/.local/share/
#}

#build() {
  #cd ~/.local/share/stow && autoreconf -iv
  #make install
#}

#main() {
  #clone
  #build
#}

#main

makepkg

sudo pacman -U *.pkg.tar.xz
