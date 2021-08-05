# Date: 2021-07-20 14:38:34
# Author: oeyoews
#
# zprof analyse statup tim for zsh
zmodload zsh/zprof

# disable secure check for compfix.zsh oh-my-zsh.sh
export ZSH_DISABLE_COMPFIX="true"

export ZSH=~/.omz
plugins=(
  zsh-autosuggestions
  sudo
  zsh-syntax-highlighting
  extract
  # how to use j k to exit insert mode
  # solve auto complete for suggestion bindkey
  # vi-mode
  # although zsh plugin `nvm` use lazy load , but it still slow, please use onvm
  # nvm
)
source $ZSH/oh-my-zsh.sh
source $ZSH/p10k-rainbow.zsh

# ps -ef | grep/rg TIM && kill PID
# killall -9 name
# ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head
# echo $XDG_SESSION_TYPE
# show all linkfile : ls -al | grep -- \-\>
# time zsh -i -c exit

 # netstat -atlunp
 # git config --global http.proxy 'socks5://127.0.0.1:1080'
 # git config --global http.proxy 'localhost:8080'
 # git config --global https.proxy 'socks5://127.0.0.1:1080'

 # less use
 # vim --startuptime start.log xxx.py
 # nvme-cli smart-log /dev/nvme01
 # nvme list

 # gnome 40 shortcuts
 # super + w = shutdown current window
 # super + m = start music client
 # prtsc = screenshot
 # shift + tab = switch input method
 # super + G = open google-chrome-stable
 #
 # sudoedit = sudo -e / calling user

export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t "                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
#
alias eg="emacsclient  -c -q -n"
alias et="emacsclient -t"

