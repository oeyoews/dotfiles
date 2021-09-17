#!/usr/bin/env bash

set -e

create_dir() {
  cd "$HOME"|| exit 0
  mkdir .config/coc \
        Jupyter repo doc pdf md org temp Vscode wechat iso matlab Xournal Vim Md C
}

main() {
  create_dir;
  echo "Creat some directions for you successfully."
}

main
