#!/usr/bin/zsh

SUCCESS="success link"
echo START:
# LPATH=$HOME/src/DOTFILES
# .ZSHRC
ln -si $PWD/.zshrc ~
# OMZ
# note if .omz exit it will show .omz/omz need to add a adjust
# like if [ -d .omz ]; then mv ~/.omz ~/.omz_bk 
rm ~/.omz
ln -si $PWD/omz ~/.omz 
echo ${SUCCESS} link OMZ
# VSCODE
# if vscode not install and this dir will not exit ,so it will make a error
ln -si $PWD/setting.json ~/.config/Code/User/
echo  ${SUCCESS} vscode.setting.json
# INPUT
ln -si $PWD/.pam_environment ~
# GITCONFIG
ln -si $PWD/.gitconfig ~
# ranger 
sudo cp -r $PWD/ranger ~/.config/ 
