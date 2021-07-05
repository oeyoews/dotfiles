#!/usr/bin/zsh

SUCCESS="success link"
echo START:
LPATH=$HOME/src/DOTFILES
# .zshrc
ln -sf $LPATH/.zshrc $HOME/
# omz
ln -sf $LPATH/omz $HOME/.omz && echo ${SUCCESS} link ~/.omz
# vscode
# if vscode not install and this dir will not exit ,so it will make a error
ln -sf $LPATH/setting.json ~/.config/Code/User/
echo  ${SUCCESS} vscode.setting.json
