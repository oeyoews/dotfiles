#!/usr/bin/env bash

set -e

create_dir() {
  cd "$HOME"|| exit 0
  mkdir .config/coc \
        jupyter repo doc pdf md org temp vscode wechat iso matlab
}

main() {
  create_dir;
  echo "Creat some directions for you successfully."
}

main
