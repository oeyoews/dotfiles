# =====================================================
#!/bin/bash
# Author:
# Date:
# OS: manjaro for this vim script
# Descriable:
# note: need sudo bash vim.sh to execute
# bug2?: need to adjust this  vim8 if exit
# =====================================================

function main() {
yes | sudo pacman -R vim
git clone https://hub.fastgit.org/vim/vim  .vim8  --depth 1
cd .vim8/src
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

success="success install vim8 by script manually"
echo "$success"
}
