# Date: 2021-07-20 14:38:34
# Author: oeyoews

export ZSH=~/.omz
plugins=(
  zsh-autosuggestions
  sudo
  zsh-syntax-highlighting
  extract
)
source $ZSH/oh-my-zsh.sh
source $ZSH/p10k-rainbow.zsh

# auto complete for autosuggest plugin
bindkey ',' autosuggest-accept
# Key: alt + q
bindkey "\eq" push-line-or-edit

# alias
alias cdd="cd ~/dotfiles/"
alias vimhost="sudo vim /etc/hosts"
# alias fzf="fzf --reverse --height 40% --preview 'head -100 {}'"
alias date='date +"%Y-%m-%d %H:%M:%S"'
alias cdn='cd $NOTE/linux'
alias og='google-chrome-stable'
alias vimpac='sudo vim /etc/pacman.conf'
alias vimirr='sudo vim /etc/pacman.d/mirrorlist'
alias kvm='sudo virt-manager'
# systemd-analyze critical-chain

# ps -ef | grep/rg TIM && kill PID
# killall -9 name
# ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head
# echo $XDG_SESSION_TYPE
# show all linkfile : ls -al | grep -- \-\>

 # netstat -atlunp
 # git config --global http.proxy 'socks5://127.0.0.1:1080'
 # git config --global http.proxy 'localhost:8080'
 # git config --global https.proxy 'socks5://127.0.0.1:1080'

function onproxy() {
   export https_proxy=http://127.0.0.1:8889
   export http_proxy=http://127.0.0.1:8889
   export all_proxy=socks5://127.0.0.1:8889
   # curl cip.cc 代理后 cip.cc 访问会很慢
   curl ip.sb
 }

alias offproxy="unset http_proxy https_proxy all_proxy && curl cip.cc"
#
alias cip='curl cip.cc'
alias logoutg="gnome-session-quit"
alias opensshd='sudo systemctl restart sshd.service && systemctl status sshd.service'
alias check='shellcheck'

# TMUX
# if no session is started, start a new session
# when quitting tmux, try to attach
# NOTE: Turn On: to comment this function fitst and last line
# not suit split in konsole, but can creat new tab use C-S t
