# vim
alias viz='vim $HOME/.zshrc'
alias vip='vim ~/.omz/lib/private.zsh'

# path
alias cdd="cd ~/dotfiles/"
alias soz='source $HOME/.zshrc && exec zsh'

# system
alias date='date +"%Y-%m-%d %H:%M:%S"'
alias neo='fastfetch'
alias open='xdg-open'
alias c='clear'
alias pas='sudo pacman -S'
alias yayy="yay -Yc"
alias yayr='yay -Rscn'
alias cp="cp -r"

# on
alias 'onkvm'='sudo virt-manager'
alias 'onsshd'='sudo systemctl restart sshd.service && systemctl status sshd.service'

# software
alias ra='ranger'
alias dust="dust -r"
alias rm='trash'
alias ms='musicbox'
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'

# arguments: -p -u
alias tse='crow -t en'
# English to Chinese
alias ts='crow -b'

alias cip='curl cip.cc'
alias ipr='ip addr | rg 192'

# @git
# git -C ~/.emacs.d/ pull, more info about git ,
alias gopen='git-open'
alias gits='git status'
alias gitu='git add . && git commit && git push'
alias gite='git config -e'

alias ssh="kitty +kitten ssh"
# infocmp -a xterm-kitty | ssh myserver tic -x -o \~/.terminfo /dev/stdin
# kitty list-fonts
# PYTHONMALLOC=malloc valgrind --tool=massif kitty
# massif-visualizer massif.out.*
alias kcat="kitty +kitten icat"
alias kdiff="kitty +kitten diff"
alias kemoj="kitty +kitten unicode_input"
alias diffk="kitty +kitten diff"


# Misc
alias che="cheat -e"
alias chl="cheat -l"
alias ports='netstat -tulanp'  # need install `net-tools
alias jc="journalctl"
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

# better man page dependcies: bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

alias vim='nvim'
alias vi='nvim'
alias e='nvim'
alias se='nvim -u NONE'

alias wego='curl wttr.in'

alias emacs='emacs -nw'
alias doom='~/.emacs.d/bin/doom'
alias fmo='~/dotfiles/archive/src/fm6000/bin/fm6000 -r -c blue'

#v2ray
#journalctl -f -u v2raya.service
alias v2rayac="sudo systemctl stop v2raya"
alias v2rayao="sudo systemctl start v2raya"

# nvim
#nvim --startuptime startup.log -c exit && tail -100 startup.log
# nvim -c PlugInstall

# journalctl -rb -1
