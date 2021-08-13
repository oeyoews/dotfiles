# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export LANG=en_US.utf8

# @oh-my-zsh
#
# @zprof(fix lolcattion)
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
  # vi-mode is confict to it , just use vim short keys to instead of it, so sudo is deprecated
  # sudo
  zsh-syntax-highlighting
  extract)
  source $ZSH/oh-my-zsh.sh
  #

  # @bindkeys for zsh plugin 'zsh-autosuggest'
  # auto complete for autosuggest plugin
  # 怎么判定是否启用zsh-autosuggestions plugins
  # bindkey ',' autosuggest-accept


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


# @p10k
# To customize prompt, run `p10k configure` or edit ~/.omz/p10k-rainbow.zsh.
# source $ZSH/p10k-rainbow.zsh
[[ ! -f ~/.omz/p10k-rainbow.zsh ]] || source ~/.omz/p10k-rainbow.zsh

## @doom
alias eg="emacs"
alias et="emacs -nw"

# @doom
# alias doom="~/.emacs.d/bin/doom"
export PATH=$PATH:~/.emacs.d/bin

export EDITOR=vim

# surround
# autoload -Uz surround
# zle -N delete-surround surround
# zle -N add-surround surround
# zle -N change-surround surround
# bindkey -a cs change-surround
# bindkey -a ds delete-surround
# bindkey -a ys add-surround
#
#
# Open current prompt in external editor
# autoload -Uz edit-command-line; zle -N edit-command-line
bindkey '^ ' edit-command-line

# bindkey -M viins '^n' history-substring-search-down
# bindkey -M viins '^p' history-substring-search-up
bindkey -M viins '^s' history-incremental-pattern-search-backward
bindkey -M viins '^u' backward-kill-line
bindkey -M viins '^w' backward-kill-word
bindkey -M viins '^b' backward-word
bindkey -M viins '^f' forward-word
bindkey -M viins '^g' push-line-or-edit
bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^e' end-of-line
bindkey -M viins '^d' push-line-or-edit

# in vi-mode state visual
bindkey -M vicmd '^k' kill-line
# like man in vi-mode visual
bindkey -M vicmd 'H'  run-help


# C-z to toggle current process (background/foreground)
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z


