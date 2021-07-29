# Date: 2021-07-20 14:38:34 
# Author: oeyoews
#
export ZSH=~/.omz
# Don't modify it and move it to other files
#
source $ZSH/p10k/powerlevel10k.zsh-theme  
source $ZSH/p10k-rainbow.zsh 
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $ZSH/plugins/sudo.zsh
# Key: comma
bindkey ',' autosuggest-accept
# TODO: In ranger, it not work, try fix it in config
# Don't modify this plugin name and del files
# Key: alt + q
bindkey "\eq" push-line-or-edit
source $ZSH/oh-my-zsh.sh  
#
# Lastly, put this highlighting to last, to fix some display bug
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
alias cdd="cd ~/dotfiles/"
alias vihosts="sudo vim /etc/hosts"
alias fzf="fzf --reverse --height 40% --preview 'head -100 {}'"
alias date='date +"%Y-%m-%d %H:%M:%S"'
alias cdn='cd $NOTE/linux'
alias yays='yay -S'
alias px='proxychains'
# ps -ef | grep/rg TIM && kill PID
# ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head
# echo $XDG_SESSION_TYPE
# show all linkfile
# ls -al | grep -- \-\> 
#
# TMUX
# if no session is started, start a new session
# when quitting tmux, try to attach
# NOTE: Turn On: to comment this function fitst and last line
#
function tmux() {
  if which tmux >/dev/null 2>&1; then
    test -z ${TMUX} && tmux
    while test -z ${TMUX}; do
      tmux attach || break
    done
  fi
}

 # export http_proxy="http://localhost:8889"
# alias proxy='export https_proxy="https://localhost:8889"'
# export https_proxy="http://localhost:8889"
# alias proxyx='unset https_proxy && curl ip.sb'
# netstat -atlunp
# git config --global http.proxy 'socks5://127.0.0.1:1080'
# git config --global http.proxy 'localhost:8080'
# git config --global https.proxy 'socks5://127.0.0.1:1080'
# curl cip.cc
alias proxy="export https_proxy=http://127.0.0.1:8889 http_proxy=http://127.0.0.1:8889 all_proxy=socks5://127.0.0.1:8889 && curl cip.cc"
alias proxyx="unset http_proxy https_proxy all_proxy && curl cip.cc"
# ?
alias cip='curl cip.cc'
alias logoutg="gnome-session-quit"
alias opensshd='sudo systemctl restart sshd.service && systemctl status sshd.service'
# uname -nr && cur cip.cc 
# last -- u (deprecate)
