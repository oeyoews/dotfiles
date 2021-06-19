# ================================================
# 2021年 06月 13日 星期日 16:36:14 CST
# Author: oeyoews
#     __  ___                    _                            
#    /  |/  /   __  __ _   __   (_)   ____ ___    _____  _____
#   / /|_/ /   / / / /| | / /  / /   / __ `__ \  / ___/ / ___/
#  / /  / /   / /_/ / | |/ /  / /   / / / / / / / /    / /__  
# /_/  /_/    \__, /  |___/  /_/   /_/ /_/ /_/ /_/     \___/  
#            /____/                                           
# ================================================

# =============
# zsh default on manjaro
# =============
# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    source /usr/share/zsh/manjaro-zsh-config
fi

# =============
# manjaro zsh p10k default_modify style
# =============
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    # source /usr/share/zsh/manjaro-zsh-prompt
# fi

# =============
# p10k style
# =============
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" \
  ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.p10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# =============
# vi in terminal
# =============
# set -o emacs
set -o vi

# =============
# editor
# =============
# export VISUAL="vim"
# export EDITOR="$VISUAL"
# echo $PATH or env |rg someone
# export PATH=$PATH:~/src/note/
export EDITOR=vim

# =============
# sudo pacman -S nvm on manjaro
# =============
source /usr/share/nvm/init-nvm.sh # if nothing , not comment this source

# =============
# alias
# =============
alias cl='clear'
alias vi='vim'
alias ls='lsd'
alias ping="ping -c 2"
alias neo='neofetch| lolcat'
alias ema='emacs -nw'
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
alias stime='systemd-analyze'
alias sl='sl | lolcat'
alias cd..="cd .."
alias cdh="cd ~"
alias mkfile='touch'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'
alias update_mirrors='sudo pacman-mirrors -m rank -c China -i'
alias cd-='cd -'
alias vim='nvim'
alias figlet='figlet -W -f slant'
alias ms='musicbox'
# =============
# some function
# =============
function mcd () {
  mkdir -p $1
  cd $1
}

# =============
# git style
# =============
alias gits='git status'
alias gopen='git-open'
# =============
# some shell examples
# =============
# sudo pacman -S --noconfirm vim
# echo '\n' | sudo pacman -Syu vim

# =============
# zsh autosuggest-accept
# =============
bindkey ',' autosuggest-accept
