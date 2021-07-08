#!/usr/bin/bash
# 2021-07-08 15:41:09 

function file_jusge() {
  IP="https://hub.fastgit.org/oeyoews/.vim"
  WHO="$(whoami)"
  if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim_bk
  fi
  git clone --depth 1 ${IP}
  echo "Finish to intall oeyoews/.vim for ${WHO}."
  echo "Just enjoy it!"
}


