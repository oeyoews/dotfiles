#!/usr/bin/env bash

set -e

create_dir() {
  cd "$HOME"|| exit 0
	mkdir repo/
  cd repo
  mkdir doc pdf zip tmp image video text ppt project
}

main() {
  create_dir;
  echo "Creat some directions for you successfully."
}

main
