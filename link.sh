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
# Green_Success "FINSH"
# Yellow_Warnning "WARNING"
# Red_Error "ERROR"
#########################################################
echo -e Green_Success "LINK_START:\n"

# note if .omz exit it will show .omz/omz need to add a adjust
MS3="=== rm omz directory and ln a new omz directory === "
MS4="=== success link OMZ ==="
if [ -d ~/.omz/ ]; then
    rm ~/.omz
    echo $MS3
fi
ln -si $PWD/omz ~/.omz
echo $MS4
Green_Success "OMZ"

# VSCODE
# if vscode not install and this dir will not exit ,so it will make a error
export VSCODE=~/.config/Code/User
MS1="This vscode may be not installed, please install it!"
MS2="rm exist file vscode_configure(old)"
if [ ! -d ${VSCODE} ]; then
  mkdir -r ${VSCODE}
  echo $MS1
elif [ -e ${VSCODE}/settings.json ]; then
  rm ${VSCODE}/settings.json
  echo $MS2
fi

MS5="success link vscode_configure"
ln -si $PWD/settings.json ${VSCODE}/ && echo $MS5
# INPUT
ln -si $PWD/.pam_environment ~
# GITCONFIG
ln -si $PWD/.gitconfig ~
# ranger
sudo cp -r $PWD/ranger ~/.config/
# zshrc seem to need password TODO
ln -si $PWD/.zshrc ~


Green_Success "FINSH"
