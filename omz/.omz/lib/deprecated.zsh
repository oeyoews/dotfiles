# some unused config
#
# @spacemacs
# function _spacemacs() {
  # https://www.emacswiki.org/emacs/EmacsClient
  # export ALTERNATE_EDITOR=""
  # export EDITOR="emacsclient -t "                  # $EDITOR opens in terminal
  # export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
  # Note: emacs is restart emacs every times
  # gui emacs
  # emacsclient -nw（连接到现有的守护进程）
  # \emacs -q # original emacs
  # alias emacs="emacs &"
  # alias eg="emacsclient  -c -q -n"
  # tui emacs
  # alias et="emacsclient -t"
# }


# git config --global url.https://github.com.cnpmjs.org/.insteadof https://github.com/
#
#
# Key: alt + q
# bindkey "\eq" push-line-or-edit
#
# less use
# nvme-cli smart-log /dev/nvme01
# nvme list

# sudoedit = sudo -e / calling user


# git config --global http.proxy 'socks5://127.0.0.1:1080'
# git config --global http.proxy 'localhost:8080'
# git config --global https.proxy 'socks5://127.0.0.1:1080'
 
# tips: time zsh -i -c exit
#
# export LANG=en_US.utf8
#
# ps -ef | grep/rg TIM && kill PID
# killall -9 name
# ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head
# echo $XDG_SESSION_TYPE
# show all linkfile : ls -al | grep -- \-\>

# alias doom="~/.emacs.d/bin/doom"
#
# @deprecated
# alias cp='cp -r -i'
# alias sl='sl | lolcat'
# alias ts='trans -b'
# alias figlet='figlet -W -f slant'
# alias worms='wormhole send'
# alias wormr='wormhole receive'
# alias glogout="gnome-session-quit"
# alias py='python'
# alias "pacman-mirrors"='sudo pacman-mirrors -m rank -c China -i'
# alias update='sudo pacman -Syu'
