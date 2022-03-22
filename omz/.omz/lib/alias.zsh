# note this will cause $path load twice extra
# bug: exe it twice
#alias soz='source $HOME/.zshrc && exec zsh'
alias cdrt="cd ~/REPOS/TiddlyWiki5"
alias cdri="cd ~/REPOS/TiddlyWiki5/img"
#alias cdrh="cd ~/REPOS/hugo2"
alias soz='exec zsh'
alias tw='tiddlywiki'
alias lss='colorls'
alias exai='exa --icons'
alias colortree='colorls --tree=2'
# system
alias date='date +"%Y-%m-%d %H:%M:%S"'
#alias date='date -u'
#alias date='\date +%F'
#alias date='\date -I'
alias neo='fastfetch'
# TODO: add https::// support
alias open='xdg-open'
alias c='clear'

alias hmd="cd /home/oeyoews/REPOS/hugo2/content/post/"
# yay
alias pas='sudo pacman -S'
# sudo pacman-mirrors -c China -m rank -i -aS testing
# ??
#alias yayy="yay -Yc"
#alias yayr='yay -Rscn'
alias yayr='yay -R'
alias yayg='yay -G'
alias yayi='yay -Qi'
alias yays='yay -Qs'
alias yayss='yay -S'

alias cp="cp -r"

# on
#alias 'onkvm'='sudo virt-manager'
#alias 'onsshd'='sudo systemctl restart sshd.service && systemctl status sshd.service'

# software
alias ra='ranger'
alias dust="dust -r"

# @ trash
alias rmm='trash'
alias rm='\rm -rf'
# TODO
# alias rm="mv ~/.local/share/..."

# have some bugs
alias ms='musicbox'
#
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'

## arguments: -p -u
#alias tsu='crow -u -s en '
## English to Chinese
#alias tsc='crow -b -s en -t zh-CN'
## to English
#alias tse='crow -s zh-CN -t en'

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
alias cig='curl google.com'
alias ipr='ip addr | rg 192'

# @git
# git -C ~/.emacs.d/ pull, more info about git ,
alias gh='git-open'
#alias gits='git status --short'
alias gits='git status'

alias gitu='git add . && git commit && git push'
alias gitua='git add . && git commit -m "🎣 This is an automatic push" && git push'
alias gitui='git commit -m "🍹 This is an automatic push for img" && git push'
alias gitp="git push"

#remove tag
#git push origin :refs/tags/v0.0.2
alias gite='git config -e'
alias gita='git tag'
alias gitaa='git push origin --tags'
alias gitg="vim ./.gitignore"
#git push -uf origin main

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

# @deprecated
#alias che="cheat -e"
#alias chl="cheat -l"

alias ports='netstat -tulanp'  # need install `net-tools
alias jc="journalctl"
alias sc="systemctl"
alias scc="sudo systemctl"
alias zprof="zprof > /tmp/zprof.log"
#alias btop='bpytop'
# `zsh -f' (vanilla for zsh)
alias zsh_time="time (repeat 10 zsh -i -c exit)"

#alias nvim="~/.local/share/nvim.appimage"
alias vim='nvim'
alias vi='nvim'
alias e='nvim'
alias se='nvim -u NONE'

# get weather to your terminal
alias wego='curl wttr.in'

#alias emacsn='emacs -nw'
alias doom='~/.emacs.d/bin/doom'

# This recursion order is important
alias emacs="emacsclient -nc"
#emacsclient -t
alias ee='emacs'
#\emacs -nw --color=no

alias eer="systemctl --user restart emacs.service"
alias reveal="reveal-md"

alias bp="btop"
#alias fmo='fmo -r -c blue'

# v2raya
#journalctl -f -u v2raya.service
alias pc="sudo systemctl stop v2raya"
alias po="sudo systemctl start v2raya"

# nvim
#nvim --startuptime startup.log -c exit && tail -100 startup.log
# nvim -c PlugInstall

# journalctl -rb -1

# watch ls <dir>
#alias watch="watch -n 1 -d"
alias vu="nvim -c PlugUpdate"
alias pipu='pip3 install --user'

 #@DEPRECATED taskbook
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
alias ttm='tt -m' # : @idnumber boardname

#alias dt="dict"

# markdown presention
#alias pp='slides'

#alias rgf='rg '
#alias rgf='func() { rg $1 }; func'
#alias rgf='func() { rg $1 ~/.sheets/ ~/dotfiles/archives/notes }; func'
#

# jetbrains
# goland
# nohup justp for command, not support alias, so add it in alias to support
# use bg to show some background works, and you can use ctrl+z to put it background_jobs again
# why 2>&1 is to &0
#alias _goland="nohup /opt/GoLand-2021.1.3/bin/goland.sh >/tmp/_goland.out 2>&1 &"
#alias goland="/usr/bin/goland >/tmp/goland.out 2>&1 &"

#alias kooha="/usr/bin/kooha >/tmp/kooha.out 2>&1 &"

#alias ff="ff -theme one-dark"

#fc -li
alias his="history -i"

alias killalli="killall -i"
alias killallv="killall -v"

#maybe have some bug
alias ktim="killall TIM.exe QQProtect.exe explorer.exe winedevice.exe "
alias kwps="killalli wpscloudsvr"

# passline a/g/h/d/ -p -c

# path
# TODO:
alias cdd="cd ~/dotfiles/"
alias cdv="cd ~/.config/nvim/"
#alias cdn="cd $Draft"
alias cdn="cd ~/dotfiles/notes"

# zsh config file
alias viz='vim $HOME/.zshrc'
alias via='vim ~/.omz/lib/alias.zsh'
alias vif='vim ~/.omz/lib/01-functions.zsh'
alias vie="vim ${ZSH}/lib/export.zsh"
#alias vis="vim ~/.omz/lib/start.zsh"

# terminal config file
alias vik="vim ~/.config/kitty/kitty.conf"
#alias viw="vim ~/.config/wezterm/wezterm.lua"
#alias via="vim ~/.config/alacritty/alacritty.yml"

#alias viss="vim ~/.ssh/config"
#alias vie="vim $(mktemp -t temp.XXXXXX)"
#cd $(find * -type d | fzf)
#vim $(fzf)

#tips
# type ls/open
alias todo="gnome-todo"

alias gll="setsid google-chrome-stable http://127.0.0.1:8090 > /tmp/ll.log 2>&1 &"

# tips
# jc -xe  > /tmp/1.log
# jc -f(follow) -u halo
alias ts="trans"

#journalctl -p 3 -xb
#journalctl -b -p warning
#inxi -Fxz
#sudo -s /bin/zsh ???
alias vie="vim ~/.doom.d/config.el"

alias hugod="cd ~/REPOS/hugo2/ && setsid hugo server > /tmp/hugod.log 2>&1 &"
#pacman -Si <packagename>

alias yout="you-get"
# npx http-server

alias pingb="ping bing.com"

alias vitw="google-chrome-stable ~/dotfiles/doc/twcn.html"
