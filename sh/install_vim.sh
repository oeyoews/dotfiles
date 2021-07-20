#!/usr/bin/bash

# Date: 2021-07-08 23:39:21 
# OS: Manjaro for this vim script
# NOTE: need sudo 

function main() {
  rm -rf ~/.vim8
yes | sudo pacman -R vim
git clone https://hub.fastgit.org/vim/vim  ~/.vim8  --depth 1
cd ~/.vim8/src
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make install

SUCCESS="Success install vim8 by script manually"
echo "$SUCCESS"
}

main
