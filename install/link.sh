#!/usr/bin/zsh
echo START:
zsh
LPATH=$HOME/src/DOTFILES
# .zshrc
ln -sf $LPATH/.zshrc $HOME/
source $HOME/.zshrc
# omz
ln -sf $LPATH/.oh-my-zsh $HOME/
exec zsh
echo 1:success link .oh-my-zsh/
