# ==============================================================
# 2021年 06月 13日 星期日 16:36:14 CST
# Author: oeyoews
#     __  ___                    _
#    /  |/  /   __  __ _   __   (_)   ____ ___    _____  _____
#   / /|_/ /   / / / /| | / /  / /   / __ `__ \  / ___/ / ___/
#  / /  / /   / /_/ / | |/ /  / /   / / / / / / / /    / /__
# /_/  /_/    \__, /  |___/  /_/   /_/ /_/ /_/ /_/     \___/
#            /____/
# ==============================================================

# Use powerline
# USE_POWERLINE="true"
# Source manjaro-zsh-configuration
# if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    # source /usr/share/zsh/manjaro-zsh-config
# fi

# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    # source /usr/share/zsh/manjaro-zsh-prompt
# fi

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" \
  # ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi


# ==================
# oh-my-zsh
# ==================
export ZSH=$HOME/.oh-my-zsh # load oh-my-zsh
source $ZSH/oh-my-zsh.sh # don't modify this

source $ZSH/custom/themes/.p10k/powerlevel10k.zsh-theme # p10k 依赖文件
source .p10k.zsh

# export PATH=$PATH:~/src/note/
export EDITOR=vim

# =============
# sudo pacman -S nvm on manjaro
# =============
source /usr/share/nvm/init-nvm.sh # if nothing , not comment this source

# =============
# function config
# =============
function mcd () {
  mkdir -p $1
  cd $1
}

# python -m http
function pym() {
  ip addr | rg 192
  python -m http.server
}

# =============
# git config
# =============
alias gits='git status'
alias gopen='git-open'
alias gitu='git add . && git commit && git push'

# =============
# some shell examples
# =============
# sudo pacman -S --noconfirm vim
# echo '\n' | sudo pacman -Syu vim

# =============
# zsh autosuggest-accept
# =============
bindkey ',' autosuggest-accept


# =============
# alias
# =============
alias cl='clear'
alias vi='vim'
alias ls='colorls'
alias ping="ping -c 2"
alias neo='neofetch| lolcat'
alias ema='emacs -nw'
alias cp='cp -r'
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
alias dust="dust -r"
alias mkfile='touch'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'
alias update_mirrors='sudo pacman-mirrors -m rank -c China -i'
alias cd-='cd -'
alias pacman-m='sudo pacman-mirrors -m rank -c China -i' # sudo pacman-mirrors -aS unstable/testing/stable
alias halt='halt -p'
alias vito='vim todo'
alias figlet='figlet -W -f slant'
alias ms='musicbox'

