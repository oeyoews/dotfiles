#!/usr/bin/zsh

# =============
# alias
# =============

alias cl='clear'
alias cdt="cd $HOME/temp"
alias cd-='cd -'
alias cdh="cd ~"
alias 'cd..'="cd .."
alias cp='cp -r -i'
alias dust="dust -r"
alias 'echo'='echo -e'
alias ema='emacs -nw'
alias emz='ema $HOME/.zshrc'
alias open='xdg-open'
alias ping="ping -c 2"
alias py='python'
alias pacmans='time sudo pacman -S'
alias pacmanm='sudo pacman-mirrors -m rank -c China -i' # sudo pacman-mirrors -aS unstable/testing/stable
alias pacmanmu='sudo pacman-mirrors -aS  unstable -m rank -c China -i'
alias rm='trash -i'
alias ra='ranger'
alias gits='git status'
alias gopen='nvm && git-open'
alias gitu='git add . && git commit && git push'
alias mv="mv -i"
alias mkfile='touch'
alias ms='musicbox'
alias fast='fastfetch| lolcat'
alias yay='time yay'
alias yayy="yay -Yc"
alias yayr='yay -Rscn'
alias halt='halt -p'
alias his='history 100'
alias sl='sl | lolcat'
alias ts='trans -b'
alias top='bpytop'
alias jctl='journalctl -b'
alias stime='systemd-analyze'
alias soz='source $HOME/.zshrc'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'
alias figlet='figlet -W -f slant'
alias update='sudo pacman -Syu'
alias update_mirrors='sudo pacman-mirrors -m rank -c China -i'
alias vi='vim'
alias vito='vim ~/todo.org'
alias emto='emacs -nw ~/todo.org'
alias viz='vim $HOME/.zshrc'
alias worms='wormhole send'
alias wormr='wormhole receive'
alias wego='curl -s wttr.in | lolcat'
alias vimpk="vim $ZSH/p10k-rainbow.zsh"
alias ipr='ip addr | rg 192'
alias sctl='systemctl'
alias gitc="git checkout ."
alias gitr="git rm --cache ."

