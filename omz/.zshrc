# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zprof analyse statup tim for zsh
alias zprof="zprof > /tmp/zprof.log"
zmodload zsh/zprof

# disable secure check for compfix.zsh oh-my-zsh.sh
export ZSH_DISABLE_COMPFIX="true"

export ZSH=~/.omz
plugins=(
  zsh-autosuggestions
  # sudo
  zsh-syntax-highlighting
  extract)
  source $ZSH/oh-my-zsh.sh

# P10k
# To customize prompt, run `p10k configure` or edit ~/.omz/p10k-rainbow.zsh.
# source $ZSH/p10k-rainbow.zsh
[[ ! -f ~/.omz/p10k-rainbow.zsh ]] || source ~/.omz/p10k-rainbow.zsh

# doom emacs
# time emacs -q -e kill-emacs
# time emacs -e kill-emacs
alias eg="emacs"
alias et="emacs -nw"
# alias doom="~/.emacs.d/bin/doom"
export PATH=$PATH:~/.emacs.d/bin

export EDITOR=vim

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
