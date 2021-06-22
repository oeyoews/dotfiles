# =====================================================
#!/bin/bash
# Author:
# Date:
# Descriable:
# =====================================================

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
