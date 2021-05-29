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

source /usr/share/nvm/init-nvm.sh
alias cl='clear'
alias ls='lsd'
export EDITOR=/usr/bin/vim
alias ping="ping -c 5"
alias neo='fastfetch | lolcat'
alias ema='emacs'
set -o vi
alias rm='trash'
alias open='xdg-open'
