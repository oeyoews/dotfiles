#!/usr/bin/zsh

# =============
# self alias
# =============

alias cl='clear'
alias cdt="cd $HOME/temp"
# alias cp='cp -r -i'
alias dust="dust -r"
alias open='xdg-open'
alias ping="ping -c 5"
alias py='python'
alias pacmans='sudo pacman -S'
alias "pacman-mirrors"='sudo pacman-mirrors -m rank -c China -i'
alias rm='trash'
alias ra='ranger'
alias gits='git status'
alias gopen='git-open'
alias gitu='git add . && git commit && git push'
alias ms='musicbox'
alias fast='fastfetch'
alias yayy="yay -Yc"
alias yayr='yay -Rscn'
alias his='history 100'
alias sl='sl | lolcat'
alias ts='trans -b'
alias btop='bpytop'
alias soz='source $HOME/.zshrc'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'
alias figlet='figlet -W -f slant'
alias update='sudo pacman -Syu'
alias vito='vim ~/todo.org'
alias viz='vim $HOME/.zshrc'
alias worms='wormhole send'
alias wormr='wormhole receive'
alias wego='curl -s wttr.in | lolcat'
alias ipr='ip addr | rg 192'
alias sctl='systemctl'
alias gitc="git checkout ."
alias gitr="git rm --cache ."
alias offproxy="unset http_proxy https_proxy all_proxy && curl cip.cc"
alias cip='curl cip.cc'
alias glogout="gnome-session-quit"
alias 'open-sshd'='sudo systemctl restart sshd.service && systemctl status sshd.service'
alias 'open-bluetooth'="sudo systemctl start bluetooth.service"
alias cdd="cd ~/dotfiles/"
alias date='date +"%Y-%m-%d %H:%M:%S"'
alias cdn='cd $NOTE/linux'
alias 'onkvm'='sudo virt-manager'
