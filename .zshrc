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

# ==================
# oh-my-zsh
# ==================
# load oh-my-zsh.sh
source ~/.oh-my-zsh/oh-my-zsh.sh 
# p10k 依赖文件
source ~/.p10k/powerlevel10k.zsh-theme 
# plugins
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source .p10k.zsh # a link file
bindkey ',' autosuggest-accept # zsh autosuggest-accept

# export PATH=$PATH:~/src/note/
export EDITOR=vim

source /usr/share/nvm/init-nvm.sh # install and source it

# =============
# function config
# =============

# mkdir fastly
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
alias 'cd..'="cd .."
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

