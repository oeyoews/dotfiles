#!/usr/bin/env bash

clone() {
  git clone --depth 1 https://github.com/aspiers/stow.git
}

build() {
  cd stow && autoreconf -iv
  make install
}

main() {
  clone
  build
}

main
