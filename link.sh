#!/usr/bin/zsh

SUCCESS="success link"
echo START:
LPATH=$HOME/src/DOTFILES
# .zshrc
ln -sf $LPATH/.zshrc $HOME/
# omz
ln -sf $LPATH/omz $HOME/.omz && echo ${SUCCESS} link .omz
# vscode
ln -sf $LPATH/setting.json
echo  ${SUCCESS} vscode.setting.json
