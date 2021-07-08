#!/usr/bin/bash
# 2021-07-08 22:24:50 

function npm() {
  if hash "node" &>/dev/null; then
    node_version=$(node --version)
    echo "node is exist in your computer."
    npm i -g git-open
  else
    echo "maybe you should install node(for install git-open)"
  fi
  }

function main() {
npm
}

main
