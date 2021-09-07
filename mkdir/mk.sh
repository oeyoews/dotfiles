#!/usr/bin/env bash


create_dir() {
  cd ~/HOME || return
  mkdir repo doc pdf md org temp vscode wechat
}

main() {
  create_dir;
  echo "Creat some dir for your system successfully."
}

main
