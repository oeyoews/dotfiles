#!/usr/bin/env bash
# 2021-07-14 15:12:04
function dotfiles() {
  cd $HOME/src/DOTFILES && git add . && git commit -m "This is a auto push for Dotfiles." && git push
  echo "Date:$(date) User:$(whoami) success for crontab (Dotfiles)" >> $HOME/src/DOTFILES/Log/crontab_for_Dotfiles.log
}

function note() {
  cd $HOME/src/note  && git add . && git commit -m "This is a auto push for note." && git push
  echo "Date:$(date) User:$(whoami) success for crontab (note)" >> $HOME/src/DOTFILES/Log/crontab_for_Note.log
}

function main() {
  dotfiles
  note
}

main
