#!/usr/bin/env bash
# 2021-07-08 14:57:21

function green_success(){
    printf '\033[1;32;40m[Success]  %b\033[0m\n' "$1";
}

function yellow_warnning(){
    printf '\033[1;33;40m[Warnning]  %b\033[0m\n' "$1";
}

function red_error(){
    printf '\033[1;31;40m[Error]  %b\033[0m\n' "$1";
    exit 1;
}

# ranger
function misc() {
    # need passwd
    sudo rm -rf ~/.config/ranger
    sudo cp -r ${PWD}/ranger ~/.config/ranger
}

function link_vscode() {
    VSCODE=~/.config/Code/User
    MS1="This vscode may be not installed, please install it!"
    MS2="success link vscode_configure"
    if [ ! -e ${VSCODE} ]
    then
        mkdir -pv ${VSCODE}
        echo "$MS1"
    fi
    ln -si $PWD/settings.json ${VSCODE}/
    echo "$MS2"
}

function all_dotfiles() {
    MS3="Success link all dotfiles in home"
    # all files in this folder not only dotfiles
    ln -si $PWD/dotfiles/.[a-z]* ~
    # : can't use .* in git dir, because it can ln . and .. dir.
    # :so, must be put them in another dir, to avoid dir like .git and .gitconfig and so on
    # : can't use * to instead of dot, because it can't to instead it use ==> .[a-zA-Z]*
    echo "$MS3"
}

function install_fonts() {
  # NOTE: need wait to test
    # fc-list: show all font list
    mkdir ~/.fonts
    git clone --depth 1 git@gitee.com:oeyoews/fonts.git ~/.fonts/
    tar # TODO
    # creat font_cache
    mkfontscale
    mkfontdir
    # refresh font_cache -v: show process -f: force
    fc-cache -vf ~/.fonts
}

function finish() {
    echo -e '\n'
    echo -e "\e[42m All configure file linkd successfully!^_^ \
    Just enjoy it!\e[0m"
    echo  $(date)
}

function main(){
    # NOTE: Function can't is empty
    WHO="$(whoami)"
    MS4="Username is correct. Start to exectue this link.sh"
    read -t 20 -p "Please input the computer's username(in 20 seconds): " USERNAME
    if [ "$USERNAME" == "$WHO" ]
    then
        green_success "$MS4"
        misc
        link_vscode
        all_dotfiles
        finish
    else
        red_error "Your input is not correct!"
    fi
}

main
