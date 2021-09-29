#!/usr/bin/env bash

set -e

create_dir() {
  cd "$HOME"|| exit 0
	mkdir repo doc pdf zip temp 
}

main() {
  create_dir;
  echo "Creat some directions for you successfully."
}

main
