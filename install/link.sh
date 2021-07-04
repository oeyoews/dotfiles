echo START:

LPATH=$HOME/src/DOTFILES
# .zshrc
ln -sf $LPATH/.zshrc $HOME/
source $HOME/.zshrc
# omz
ln -sf $LPATH/.oh-my-zsh $HOME/
echo 1:success link .oh-my-zsh/
