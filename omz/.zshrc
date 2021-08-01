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

# ps -ef | grep/rg TIM && kill PID
# killall -9 name
# ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head
# echo $XDG_SESSION_TYPE
# show all linkfile : ls -al | grep -- \-\>

 # netstat -atlunp
 # git config --global http.proxy 'socks5://127.0.0.1:1080'
 # git config --global http.proxy 'localhost:8080'
 # git config --global https.proxy 'socks5://127.0.0.1:1080'

 alias google="google-chrome-stable"
