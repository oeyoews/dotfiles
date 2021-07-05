# ==============================================================
# date: 2021年 06月 13日 星期日 16:36:14 CST
# author: oeyoews
# ==============================================================
DOT=$HOME/src/DOTFILES
NOTE=$HOME/src/note
ZSH=$HOME/.omz # don't modify it
NVM=/usr/share/nvm
# ==================
# ZSH
# ==================
source $ZSH/p10k/powerlevel10k.zsh-theme  # p10k 依赖文件
source $ZSH/p10k-rainbow.zsh # a link file
source $ZSH/plugins/zsh-autosuggestions.zsh 
bindkey ',' autosuggest-accept
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey "\eq" push-line-or-edit
source $ZSH/oh-my-zsh.sh  # load oh-my-zsh.sh

export EDITOR=vim
source $NVM/init-nvm.sh # install and source it

# set -o vi
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
# =============

# alias cl='clear'
# alias cdt="cd $HOME/temp"
# alias cd-='cd -'
# alias cdh="cd ~"
# alias 'cd..'="cd .."
# alias cp='cp -r -i'
# alias dust="dust -r"
# alias 'echo'='echo -e'
# alias ema='emacs -nw'
# alias emz='ema $HOME/.zshrc'
# alias open='xdg-open'
# alias ping="ping -c 2"
# alias py='python'
# alias pacmans='time sudo pacman -S'
# alias pacmanm='sudo pacman-mirrors -m rank -c China -i' # sudo pacman-mirrors -aS unstable/testing/stable
# alias rm='trash -i'
# alias ra='ranger'
# alias gits='git status'
# alias gopen='git-open'
# alias gitu='git add . && git commit && git push'
# alias mv="mv -i"
# alias mkfile='touch'
# alias ms='musicbox'
# alias neo='neofetch | lolcat'
# alias yay='time yay'
# alias yayy="yay -Yc"
# alias yayr='yay -R'
# alias halt='halt -p'
# alias his='history 100'
# alias sl='sl | lolcat'
# alias ts='trans -b'
# alias top='bpytop'
# alias jctl='journalctl -b'
# alias stime='systemd-analyze'
# alias soz='source $HOME/.zshrc'
# alias tlpt='sudo tlp-stat -t'
# alias tlpb='sudo tlp-stat -b'
# alias figlet='figlet -W -f slant'
# alias update='sudo pacman -Syu'
# alias update_mirrors='sudo pacman-mirrors -m rank -c China -i'
# alias vi='vim'
# alias vito='vim ~/todo'
# alias viz='vim $HOME/.zshrc'
# alias worms='wormhole send'
# alias wormr='wormhole receive'
# alias wego='curl -s wttr.in | lolcat'
