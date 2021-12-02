# vim
alias viz='vim $HOME/.zshrc'
alias vip='vim ~/.omz/lib/private.zsh'

# path
alias cdd="cd ~/dotfiles/"
alias cdv="cd ~/.config/nvim/"
# note this will cause $path load twice extra
alias soz='source $HOME/.zshrc && exec zsh'

# system
alias date='date +"%Y-%m-%d %H:%M:%S"'
#alias date='date +%S'
alias neo='fastfetch'
alias open='xdg-open'
alias c='clear'
alias pas='sudo pacman -S'
#alias yayy="yay -Yc"
#alias yayr='yay -Rscn'
alias yayr='yay -R'
alias cp="cp -r"

# on
alias 'onkvm'='sudo virt-manager'
alias 'onsshd'='sudo systemctl restart sshd.service && systemctl status sshd.service'

# software
alias ra='ranger'
alias dust="dust -r"

# @ trash
alias rm='trash'
alias rmm='\rm'
# TODO
# alias rm="mv ~/.local/share/..."

# have some bugs
#alias ms='musicbox'
#
alias tlpt='sudo tlp-stat -t'
alias tlpb='sudo tlp-stat -b'

# arguments: -p -u
alias tse='crow -t en'
alias tsu='crow -u -t en '
# English to Chinese
alias tsc='crow -b -t zh-CN'

alias cip='curl cip.cc'
alias ipr='ip addr | rg 192'

# @git
# git -C ~/.emacs.d/ pull, more info about git ,
alias gopen='git-open'
alias gits='git status'
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
alias vik="vim ~/.config/kitty/kitty.conf.local"
alias via="vim ~/.config/alacritty/alacritty.yml"

# Export
# export $PATH
# export PATH=$PATH:~/.emacs.d/bin
# TODO
export PATH=~/dotfiles/bin:$PATH
export EDITOR=nvim
export CHEATCOLORS=true
export CHEAT_CONFIG_PATH="~/.cheatconf.yml"
export CHEAT_USE_FZF=true
#export JDTLS_PATH="$HOME/.local/share/nvim/lsp_servers/jdtls/"
#export JAR="$JDTLS_PATH/plugins/org.eclipse.equinox.launcher_*.jar"

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
alias ttp='tt -p'
alias tth='tt -h'
alias ttr='tt -r'
alias tta='tt -a'
alias tte='tt -e'

alias dt="dict"

alias cdn="cd ~/.sheets"

alias pp='slides'
