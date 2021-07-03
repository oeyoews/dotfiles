echo START:
# .zshrc
ln -sf $LPATH/.zshrc $HOME/
# omz
LPATH=~/src/DOTFILES
ln -sf $LPATH/.oh-my-zsh $HOME/
echo 1:success link .oh-my-zsh/
# p10k
ln -sf $LPATH/.p10k $HOME/
echo 2:success link .p10k/
# p10k.zsh
ln -sf $LPATH/.p10k.zsh $HOME/
echo 3:successful: p10k.zsh
