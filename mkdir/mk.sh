#!/usr/bin/env bash


create_dir_dir() {
  cd ~/HOME || return
  mkdir repo doc pdf temp vscode
}

main() {
  create_dir_dir;
  echo "successfully creat some dir == repo doc temp vscode == ."
}

main
