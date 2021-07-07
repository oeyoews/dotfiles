#!/bin/bash
#########################################################

function Green_Success(){

        echo '=================================================';

        printf '\033[1;32;40m[success]  %b\033[0m\n' "$1";

}

function Yellow_Warnning(){

        echo '=================================================';

        printf '\033[1;33;40m[warnning]  %b\033[0m\n' "$1";

}

function Red_Error(){

        echo '=================================================';

        printf '\033[1;31;40m[error]  %b\033[0m\n' "$1";

        exit 1;

}

# Green_Success "成功"
#
# Yellow_Warnning "警告"
#
# Red_Error "错误"

#########################################################
echo START:

# LPATH=$HOME/src/DOTFILES
# .ZSHRC
ln -si $PWD/.zshrc ~

# OMZ
# note if .omz exit it will show .omz/omz need to add a adjust
if [ -d ~/.omz/ ]; then
rm ~/.omz
ln -si $PWD/omz ~/.omz && echo "rm omz directory and ln a new omz directory"
else
ln -si $PWD/omz ~/.omz  && echo "directly to ln a .omz"
fi
echo ${SUCCESS} link OMZ

# VSCODE
# if vscode not install and this dir will not exit ,so it will make a error
VSCODE="~/.config/Code/User/"
if [ ! -d $VSCODE ]; then
  echo "this vscode may be not installed, please install it!"
elif [ -e $VSCODE/settings.json ]; then
  rm $VSCODE/settings.json &&  ln -si $PWD/settings.json $VSCODE/
  echo "rm settings and creat a new it"
else
  ln -si $PWD/settings.json $VSCODE/ && echo  "creat a new settings.json"
fi
  # INPUT
ln -si $PWD/.pam_environment ~
# GITCONFIG
ln -si $PWD/.gitconfig ~
# ranger 
sudo cp -r $PWD/ranger ~/.config/ 

Green_Success "成功"
