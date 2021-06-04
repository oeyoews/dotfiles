# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

set -o vi
# == export EDITOR=vim
export VISUAL="vim"
export EDITOR="$VISUAL"

# source
source /usr/share/nvm/init-nvm.sh

# alias 
alias cl='clear'
alias ls='lsd'
alias ping="ping -c 5"
alias neo='fastfetch | lolcat'
alias ema='emacs'
alias rm='trash'
alias open='xdg-open'
alias wego='curl -s wttr.in | lolcat'
alias py='python'
alias ra='ranger'
alias ts='trans -b'
