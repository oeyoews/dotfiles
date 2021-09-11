# vim
# vim --startuptime /tmp/vim-startuptime.log xxx.py
alias vito='vim ~/todo.org'
alias viz='vim $HOME/.zshrc'

# path
alias cdd="cd ~/dotfiles/"
alias cdn='cd ~/repo/note/linux'
alias cdr="cd ~/repo"
alias cdc="cd ~/repo/cCode"
alias cdt="cd ~/temp"
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
# use tldr(rust) git
alias gopen='git-open'
alias gits='git status'
alias gitc="git checkout ."
alias gitr="git rm --cache ."
alias gitu='git add . && git commit && git push'
alias gituu='git add . && git commit -m "this is a fast push." && git push'


# 防止在某些情况输入过快
alias vi="vim"
# alias vim="nvim"


## kitty
# mod F6: show kitty config
# mod backspace
# mode q
# mode t
# not recomment use `tmux in local
alias ssh="kitty +kitten ssh"
# infocmp -a xterm-kitty | ssh myserver tic -x -o \~/.terminfo /dev/stdin
# kitty list-fonts
# PYTHONMALLOC=malloc valgrind --tool=massif kitty
# massif-visualizer massif.out.*
alias kcat="kitty +kitten icat"
alias kdiff="kitty +kitten diff"
alias kemoj="kitty +kitten unicode_input"

## wego
# alias wego='curl -s wttr.in | lolcat'
alias wego='curl -s wttr.in'


# translate use crow

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
export EDITOR=vim
# better man page dependcies: bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# doom emacs
# emacs -nw -Q
# emacs -Q <--color=no>
# time emacs -q -e kill-emacs
# time emacs -e kill-emacs
alias eg="emacs"
alias et="emacs -nw"
# alias vim="nvim"
