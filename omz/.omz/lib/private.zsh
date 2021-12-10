# vim
alias viz='vim $HOME/.zshrc'
alias vip='vim ~/.omz/lib/private.zsh'
alias vif='vim ~/.omz/lib/functions.zsh'

# path
alias cdd="cd ~/dotfiles/"
alias cdv="cd ~/.config/nvim/"
# note this will cause $path load twice extra
# bug: exe it twice
#alias soz='source $HOME/.zshrc && exec zsh'
alias soz='exec zsh'


# system
alias date='date +"%Y-%m-%d %H:%M:%S"'
#alias date='\date +%F'
#alias date='\date -I'
alias neo='fastfetch'
alias open='xdg-open'
alias c='clear'

# yay
alias pas='sudo pacman -S'
#alias yayy="yay -Yc"
#alias yayr='yay -Rscn'
alias yayr='yay -R'
alias yayg='yay -G'
alias yayi='yay -Qi'
alias yays='yay -Qs'
alias yayss='yay -S'

alias cp="cp -r"

# on
alias 'onkvm'='sudo virt-manager'
alias 'onsshd'='sudo systemctl restart sshd.service && systemctl status sshd.service'

# software
alias ra='ranger'
alias dust="dust -r"

# @ trash
alias rm='trash'
alias rmm='\rm -rf'
# TODO
# alias rm="mv ~/.local/share/..."

# have some bugs
#alias ms='musicbox'
#
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'

# arguments: -p -u
alias tsu='crow -u -s en '
# English to Chinese
alias tsc='crow -b -s en -t zh-CN'
# to English
alias tse='crow -s zh-CN -t en'

# TODO: make function and complete for it
#https://github.com/soimort/translate-shell
# https://www.clloz.com/programming/assorted/2019/11/19/translate-shell-usage/
# bug: translate a text file, ues it will failed again
# fix: ip close your ladder network! and you can use `trans --debug "hello, translate-shell" to find problem from this debug info
# your ladder is used by abuntant
# trans(late-shell)
# trans --speak demo
# trans -R
# trans -I/E
# to chinese
# trans :zsh demo
# trans en:ja -p
# trans -id demo
# trans :fr url(file:///)
# trans -browser firefox :fr http://www.w3.org/
# trans -S
# trans -M
# translate sentence
# trans ""
#
alias cip='curl cip.cc'
alias ipr='ip addr | rg 192'

# @git
# git -C ~/.emacs.d/ pull, more info about git ,
alias gh='git-open'
alias gits='git status --short'
alias gitu='git add . && git commit && git push'
alias gite='git config -e'

# just for kitty terminal, other terminal please use \ssh temporary
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
#alias btop='bpytop'
# `zsh -f' (vanilla for zsh)
alias zsh_time="time (repeat 10 zsh -i -c exit)"
alias vik="vim ~/.config/kitty/kitty.local.conf"
alias via="vim ~/.config/alacritty/alacritty.yml"

export EDITOR=nvim
# Export
# export $PATH
# export PATH=$PATH:~/.emacs.d/bin
# TODO
# tips: this directory will be exist, so can't ust it to adjust
#[[ ! -d $HOME/dotfiles/bin ]] || export PATH=~/dotfiles/bin:$PATH
# when use echo $PATH, it output depend your export order
export PATH=$PATH:~/dotfiles/bin
# tips: one it right, but second step either to failed, or to add it again
#[[ -z $dt ]] && export dt=~/dotfiles
#export PATH=$PATH:$dt/bin
# tips: not add this variable to PATH, so, it's not export bin
#[[ ! -z $DBIN ]] || export DBIN=~/dotfiles/bin
#[[ ! -z $DBIN ]] || export DBIN=~/dotfiles/bin:PATH
# cheat
# TODO: source it, will have some output
# fix: by modify soz command(because it source .zshrc, ??? why)
export CHEATCOLORS=true
export CHEAT_USE_FZF=true
[[ ! -f ~/.cheatconf.yml ]] || export CHEAT_CONFIG_PATH="~/.cheatconf.yml"

# better man page dependcies: bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#alias nvim="~/.local/share/nvim.appimage"
alias vim='nvim'
alias vi='nvim'
alias e='nvim'
alias se='nvim -u NONE'

alias wego='curl wttr.in'

alias emacs='emacs -nw'
alias ee='\emacs'
alias doom='~/.emacs.d/bin/doom'
alias fmo='fmo -r -c blue'

# v2raya
#journalctl -f -u v2raya.service
# TODO
alias pc="sudo systemctl stop v2raya"
alias po="sudo systemctl start v2raya"

# nvim
#nvim --startuptime startup.log -c exit && tail -100 startup.log
# nvim -c PlugInstall

# journalctl -rb -1

# watch ls <dir>
alias watch="watch -n 1 -d"
alias vu="nvim -c PlugUpdate"
alias pipu='pip3 install --user'

# taskbook
alias tt="taskbook"
alias tti='tt -i'
alias ttt='tt -t'
alias ttd='tt -d'
alias ttb='tt -b'
alias ttc='tt -c'
alias ttpp='tt -p'
alias tth='tt -h'
alias ttr='tt -r'
alias tta='tt -a'
alias tte='tt -e'
alias ttn='tt -n'
# like star....
alias ttp='tt -l pending'
alias ttf='tt -f'

#alias dt="dict"

alias cdn="cd ~/.sheets"

alias pp='slides'

#alias rgf='rg '
#alias rgf='func() { rg $1 }; func'
#alias rgf='func() { rg $1 ~/.sheets/ ~/dotfiles/archives/notes }; func'
#

# jetbrains
# goland
# nohup justp for command, not support alias, so add it in alias to support
# use bg to show some background works, and you can use ctrl+z to put it background_jobs again
# why 2>&1 is to &0
alias _goland="nohup /opt/GoLand-2021.1.3/bin/goland.sh >/tmp/_goland.out 2>&1 &"
#alias goland="/usr/bin/goland >/tmp/goland.out 2>&1 &"

#alias kooha="/usr/bin/kooha >/tmp/kooha.out 2>&1 &"

alias ff="ff -theme one-dark"

#fc -li
alias his="history -i"
alias vis="vim ~/.omz/lib/start.zsh"

alias killalli="killall -i"
alias killallv="killall -v"
alias viw="vim ~/.config/wezterm/wezterm.lua"

alias vie="vim $(mktemp -t temp.XXXXXX)"
