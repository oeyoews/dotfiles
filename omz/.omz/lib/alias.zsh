# some personal alias

# @deprecated
# alias cp='cp -r -i'
# alias wego='curl -s wttr.in | lolcat'
# alias sl='sl | lolcat'
# alias ts='trans -b'
# alias figlet='figlet -W -f slant'
# alias worms='wormhole send'
# alias wormr='wormhole receive'
# alias glogout="gnome-session-quit"
# alias py='python'
# alias "pacman-mirrors"='sudo pacman-mirrors -m rank -c China -i'

# @vim
# vim --startuptime /tmp/vim-startuptime.log xxx.py
alias vito='vim ~/todo.org'
alias viz='vim $HOME/.zshrc'


# @path
alias cdd="cd ~/dotfiles/"
alias cdn='cd $NOTE/linux'
alias cdt="cd $HOME/temp"
alias soz='source $HOME/.zshrc'

# @system
alias date='date +"%Y-%m-%d %H:%M:%S"'
alias his='history 100'
alias update='sudo pacman -Syu'
alias fast='fastfetch'
alias open='xdg-open'
alias c='clear'
alias sctl='systemctl'
alias pacmans='sudo pacman -S'
alias yayy="yay -Yc"
alias cp="cp -r"
alias yayr='yay -Rscn'

# @on
alias 'onkvm'='sudo virt-manager'
alias 'onsshd'='sudo systemctl restart sshd.service && systemctl status sshd.service'
alias 'onbluetooth'="sudo systemctl start bluetooth.service"

# @software
alias ra='ranger'
alias dust="dust -r"
alias rm='trash'
alias ms='musicbox'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'
#
# Chinese to English
# arguments: -p -u
alias tse='crow -t en'
# English to Chinese
alias ts='crow -b'
#
alias btop='bpytop'

# @internet
alias cip='curl cip.cc'
alias ping="ping -c 5"
alias ipr='ip addr | rg 192'

# @git 
alias gopen='git-open'
alias gits='git status'
alias gitc="git checkout ."
alias gitr="git rm --cache ."
alias gitu='git add . && git commit && git push'



# 防止在某些情况输入过快
alias vi="nvim"
alias vim="nvim"
