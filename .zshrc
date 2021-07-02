# ==============================================================
# date: 2021年 06月 13日 星期日 16:36:14 CST
# author: oeyoews
# ==============================================================

# ==================
# oh-my-zsh
# ==================
source ~/.oh-my-zsh/oh-my-zsh.sh  # load oh-my-zsh.sh
source ~/.p10k/powerlevel10k.zsh-theme  # p10k 依赖文件
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.p10k.zsh # a link file
zmodload zsh/zprof
# bindkey ',' autosuggest-accept   # zsh autosuggest-accept

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
alias cp='cp -r -i'
alias mv="mv -i"
alias rm='trash -i'
alias open='xdg-open'
alias wego='curl -s wttr.in | lolcat'
alias py='python'
alias ra='ranger'
alias ts='trans -b'
alias top='bpytop'
alias soz='source $HOME/.zshrc'
alias viz='vim $HOME/.zshrc'
alias pacmans='time sudo pacman -S'
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
alias update='sudo pacman -Syu'
alias update_mirrors='sudo pacman-mirrors -m rank -c China -i'
alias yayr='yay -R'
alias cd-='cd -'
alias pacman-m='sudo pacman-mirrors -m rank -c China -i' # sudo pacman-mirrors -aS unstable/testing/stable
alias halt='halt -p'
alias vito='vim ~/todo'
alias echo='echo -e'
alias figlet='figlet -W -f slant'
alias ms='musicbox'
lpath=~/src/DOTFILES/
