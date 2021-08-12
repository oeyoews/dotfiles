# Date: 2021-07-20 14:38:34
# Author: @oeyoews

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# @oh-my-zsh
#
# @zprof(fixed)
# zprof analyse statup tim for zsh
alias zprof="zprof > /tmp/zprof.log"
zmodload zsh/zprof
#
# tips: time zsh -i -c exit
#
# disable secure check for compfix.zsh oh-my-zsh.sh
export ZSH_DISABLE_COMPFIX="true"
#
export ZSH=~/.omz
plugins=(
  # how to use j k to exit insert mode
  # solve auto complete for suggestion bindkey
  # vi-mode
  # although zsh plugin `nvm` use lazy load , but it still slow, please use onvm
  # nvm
  zsh-autosuggestions
  sudo
  zsh-syntax-highlighting
  extract)
  source $ZSH/oh-my-zsh.sh
  #
  # @bindkeys for zsh plugin 'zsh-autosuggest'
  # auto complete for autosuggest plugin
  # 怎么判定是否启用zsh-autosuggestions plugins
  bindkey ',' autosuggest-accept


# ps -ef | grep/rg TIM && kill PID
# killall -9 name
# ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head
# echo $XDG_SESSION_TYPE
# show all linkfile : ls -al | grep -- \-\>

 # netstat -atlunp
 # git config --global http.proxy 'socks5://127.0.0.1:1080'
 # git config --global http.proxy 'localhost:8080'
 # git config --global https.proxy 'socks5://127.0.0.1:1080'

 # less use
 # nvme-cli smart-log /dev/nvme01
 # nvme list

 # @gnome 40 shortcuts
 # super + w = shutdown current window
 # super + m = start music client
 # prtsc = screenshot
 # shift + tab = switch input method
 # super + G = open google-chrome-stable
 #
 # sudoedit = sudo -e / calling user


# @spacemacs
function spacemacs() {
  # https://www.emacswiki.org/emacs/EmacsClient
  export ALTERNATE_EDITOR=""
  export EDITOR="emacsclient -t "                  # $EDITOR opens in terminal
  export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
  # Note: emacs is restart emacs every times
  # gui emacs
  # emacsclient -nw（连接到现有的守护进程）
  # \emacs -q # original emacs
  # alias emacs="emacs &"
  alias eg="emacsclient  -c -q -n"
  # tui emacs
  alias et="emacsclient -t"
}

# @p10k
# To customize prompt, run `p10k configure` or edit ~/.omz/p10k-rainbow.zsh.
# source $ZSH/p10k-rainbow.zsh
[[ ! -f ~/.omz/p10k-rainbow.zsh ]] || source ~/.omz/p10k-rainbow.zsh

# NOTE:vim mode is confict to autosuggest ,
# set -o vi


## @doom
# doom() {
alias eg="emacs"
alias et="emacs -nw"
# }

# @doom
# git config --global url.https://github.com.cnpmjs.org/.insteadof https://github.com/
alias doom="~/.emacs.d/bin/doom"
# export PATH=$PATH:~/.emacs.d/bin
#
#
#

alias cp="cp -r"
