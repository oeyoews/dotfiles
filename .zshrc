# =============
# 2021年 06月 13日 星期日 16:36:14 CST
# __  __                 _               
#|  \/  |_   _   _______| |__  _ __ ___  
#| |\/| | | | | |_  / __| '_ \| '__/ __| 
#| |  | | |_| |  / /\__ \ | | | | | (__  
#|_|  |_|\__, | /___|___/_| |_|_|  \___| 
#        |___/                                    
# =============

# =============
# zsh default on manjaro
# =============
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

# =============
# vi in terminal
# =============
set -o vi

# =============
# editor
# =============
# export VISUAL="vim"
# export EDITOR="$VISUAL"
export EDITOR=vim

# =============
# sudo pacman -S nvm on manjaro
# =============
source /usr/share/nvm/init-nvm.sh

# =============
# alias
# =============
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
alias pacman='time sudo pacman'
alias yay='time yay'
alias his='history 100'
alias startuptime='systemd-analyze'
alias sl='sl | lolcat'
