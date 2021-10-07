# vim
alias vito='vim ~/dotfiles/archive/todo/todo.org'
alias viz='vim $HOME/.zshrc'
alias vic='vim ~/dotfiles/cheat/conf.yml'
alias vip='vim ~/.omz/lib/private.zsh'
alias vig='vim .gitignore'

# path
alias cdd="cd ~/dotfiles/"
alias cdv="cd ~/.config/nvim"
alias cdr="cd ~/Repos"
alias cdt="cd /tmp"
alias cdu="cd ~/.config/nvim/ultisnips"
alias soz='source $HOME/.zshrc && exec zsh'

# system
alias date='date +"%Y-%m-%d %H:%M:%S"'
alias neo='fastfetch'
alias open='xdg-open'
alias c='clear'
alias pas='sudo pacman -S'
alias yayy="yay -Yc"
alias yayyy="yes | yay -Scc"
alias yayr='yay -Rscn'
alias cp="cp -r"

# on
alias 'onkvm'='sudo virt-manager'
alias 'onsshd'='sudo systemctl restart sshd.service && systemctl status sshd.service'
alias 'onbluetooth'="sudo systemctl start bluetooth.service"

# software
alias ra='ranger'
alias dust="dust -r"
alias rm='trash'
# use vanilla rm, don't use rmm=rm, it's receive
alias rmm='\rm -rf'
alias ms='musicbox'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'

# Chinese to English
# arguments: -p -u
alias tse='crow -t en'
# English to Chinese
alias ts='crow -b'

# @internet
alias cip='curl cip.cc'
alias ping="ping -c 5"
alias ipr='ip addr | rg 192'

# @git
# git -C ~/.emacs.d/ pull, more info about git ,
alias gopen='git-open'
alias gits='git status'
alias gitu='git add . && git commit && git push'

alias ssh="kitty +kitten ssh"
# infocmp -a xterm-kitty | ssh myserver tic -x -o \~/.terminfo /dev/stdin
# kitty list-fonts
# PYTHONMALLOC=malloc valgrind --tool=massif kitty
# massif-visualizer massif.out.*
alias kcat="kitty +kitten icat"
alias kdiff="kitty +kitten diff"
alias kemoj="kitty +kitten unicode_input"
alias diffk="kitty +kitten diff"


## @translate
# alias crow="crow -b"
# chinese to english
# usage: crow -h
# crow -p foo(foo)
# crow -u bar(=>)
alias tse='crow -t en'
# english to system language (chinese)
alias ts='crow -b'

# Misc
alias che="cheat -e"
alias chl="cheat -l"
alias ports='netstat -tulanp'  # need install `net-tools
alias jc="journalctl -xe"
alias sc="systemctl"
alias zprof="zprof > /tmp/zprof.log"
alias btop='bpytop'
# `zsh -f' (vanilla for zsh)
alias zsh_time="time (repeat 10 zsh -i -c exit)"
alias vik="vim ~/.config/kitty/kitty.conf"
alias via="vim ~/.config/alacritty/alacritty.yml"

# Export
export PATH=$PATH:~/.emacs.d/bin
export EDITOR=nvim
export CHEATCOLORS=true
export CHEAT_CONFIG_PATH="~/dotfiles/archive/cheat/conf.yml"
export CHEAT_USE_FZF=true
export COLORTERM=truecolor

# better man page dependcies: bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# doom emacs
# emacs -nw -Q
# emacs -Q <--color=no>
# time emacs -q -e kill-emacs
# time emacs -e kill-emacs
alias eg="emacs"
alias et="emacs -nw"
# it's recursive
alias vim='nvim'
alias vi='nvim'
alias e='nvim'
alias se='nvim -u NONE'
alias ext=exit

alias grepd="l | grep '>'"
alias wego='curl wttr.in'
