# ==============================================================
# date: 2021年 06月 13日 星期日 16:36:14 CST
# author: oeyoews
# ==============================================================

# ==============
# Variables
# ==============
DOT=$HOME/src/DOTFILES
NOTE=$HOME/src/note
ZSH=$HOME/.oh-my-zsh # don't modify it

# ==================
# ZSH
# ==================
source $ZSH/.p10k/powerlevel10k.zsh-theme  # p10k 依赖文件
source $ZSH/p10k-rainbow.zsh # a link file
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh autosuggest-accept this bindkey order is important, don't modify it
bindkey ',' autosuggest-accept
# alt-q when enter second, this command will show again , instead of comment
bindkey "\eq" push-line-or-edit
source $ZSH/oh-my-zsh.sh  # load oh-my-zsh.sh
# export PATH=$PATH:~/src/note/
# or PATH='/usr/bin:/usr/sbin/:$PATH' $PATH 是把所有的系统中存在的所有路径全部放进来
export EDITOR=vim

source /usr/share/nvm/init-nvm.sh # install and source it

set -o vi
# =============
# function config
# =============
# mkdir fastly
function mcd () {
  mkdir -p $1
  cd $1
}

# file send
function pym() {
  ip addr | rg 192
  python -m http.server
}

function color() {
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " \
  ${${(M)$((i%6)):#3}:+$'\n'}; done
}


# =============
# alias
# order: A-Z
# =============
# C
alias cl='clear'
alias cdt="cd $HOME/temp"
alias cd-='cd -'
alias cdh="cd ~"
alias 'cd..'="cd .."
alias cp='cp -r -i'
# D
alias dust="dust -r"
# P
alias ping="ping -c 2"
alias py='python'
# G
alias gits='git status'
alias gopen='git-open'
alias gitu='git add . && git commit && git push'
alias ema='emacs -nw'
# M
alias mv="mv -i"
alias mkfile='touch'
alias ms='musicbox'
# N
alias neo='neofetch | lolcat'
# R
alias rm='trash -i'
alias ra='ranger'
# O
alias open='xdg-open'
# P
alias pacmans='time sudo pacman -S'
alias pacmanm='sudo pacman-mirrors -m rank -c China -i' # sudo pacman-mirrors -aS unstable/testing/stable
# Y
alias yay='time yay'
alias yayy="yay -Yc"
alias yayr='yay -R'
# H
alias halt='halt -p'
alias his='history 100'
# S
alias sl='sl | lolcat'
alias 'echo'='echo -e'
# T
alias ts='trans -b'
alias top='bpytop'
# J
alias jctl='journalctl -b'
# S
alias stime='systemd-analyze'
alias soz='source $HOME/.zshrc'
# T
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'
# F
alias figlet='figlet -W -f slant'
# U
alias update='sudo pacman -Syu'
alias update_mirrors='sudo pacman-mirrors -m rank -c China -i'
# V
alias vi='vim'
alias vito='vim ~/todo'
alias viz='vim $HOME/.zshrc'
# W
alias worms='wormhole send'
alias wormr='wormhole receive'
alias wego='curl -s wttr.in | lolcat'
