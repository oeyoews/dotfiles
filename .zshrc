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

# set -o vi

# == export EDITOR=vim
export VISUAL="vim"
export EDITOR="$VISUAL"

# source
source /usr/share/nvm/init-nvm.sh
# source $HOME/.local/share/gem/ruby/3.0.0/bin

# alias 
alias cl='clear'
alias ls='lsd'
alias ping="ping -c 2"
alias neo='neofetch| lolcat'
alias ema='emacs'
alias rm='trash'
alias open='xdg-open'
alias wego='curl -s wttr.in | lolcat'
alias py='python'
alias ra='ranger'
alias ts='trans -b'
alias top='bpytop'
alias soz='source $HOME/.zshrc'
alias viz='vim $HOME/.zshrc'
alias pacman='sudo pacman'
alias his='history 100'
