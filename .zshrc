# ==============================================================
# date: 2021年 06月 13日 星期日 16:36:14 CST
# author: oeyoews
# ==============================================================

# ==============
# path variables
# ==============
DOT=$HOME/src/DOTFILES
NOTE=$HOME/src/note
ZSH=$HOME/.oh-my-zsh # don't modify it

# ==================
# oh-my-zsh
# ==================
source $ZSH/oh-my-zsh.sh  # load oh-my-zsh.sh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/.p10k/powerlevel10k.zsh-theme  # p10k 依赖文件
source $ZSH/p10k-rainbow.zsh # a link file
# bindkey ',' autosuggest-accept   # zsh autosuggest-accept
# HIST_STAMPS="yyyy-mm-dd"
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

function color() {
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
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
alias ping="ping -c 2"
alias ema='emacs -nw'
alias cp='cp -r -i'
alias mv="mv -i"
alias rm='trash -i'
alias open='xdg-open'
alias yay='time yay'
alias his='history 100'
alias py='python'
alias sl='sl | lolcat'
alias cdh="cd ~"
alias dust="dust -r"
alias yayr='yay -R'
alias cd-='cd -'
alias halt='halt -p'
alias vito='vim ~/todo'
alias ms='musicbox'
alias 'echo'='echo -e'
alias 'cd..'="cd .."
alias mkfile='touch'
alias ra='ranger'
alias ts='trans -b'
alias top='bpytop'
alias jctl='journalctl -b'
alias neo='neofetch --ascii_distro a'
alias viz='vim $HOME/.zshrc'
alias stime='systemd-analyze'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'
alias figlet='figlet -W -f slant'
alias soz='source $HOME/.zshrc'
alias yayy="yay -Yc"
alias pacmans='time sudo pacman -S'
alias wego='curl -s wttr.in | lolcat'
alias pacman-m='sudo pacman-mirrors -m rank -c China -i' # sudo pacman-mirrors -aS unstable/testing/stable
alias update='sudo pacman -Syu'
alias update_mirrors='sudo pacman-mirrors -m rank -c China -i'
alias cdt="cd $HOME/temp"
