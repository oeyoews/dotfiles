# Date: 2021-07-20 14:38:34 
# Author: oeyoews

export ZSH=~/.omz
# Don't modify it and move it to other files

source $ZSH/p10k/powerlevel10k.zsh-theme  
source $ZSH/p10k-rainbow.zsh 
source $ZSH/plugins/zsh-autosuggestions.zsh 
# Key: comma
bindkey ',' autosuggest-accept
# TODO: In ranger, it not work, try fix it in config
# Don't modify this plugin name and del files
# Key: alt + q
bindkey "\eq" push-line-or-edit
source $ZSH/oh-my-zsh.sh  

# Lastly, put this highlighting to last, to fix some display bug
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cdd="cd ~/dotfiles/"
alias vihosts="sudo vim /etc/hosts"
alias fzf="fzf --reverse --height 40% --preview 'head -100 {}'"
alias date='date +"%Y-%m-%d %H:%M:%S"'
# ps -ef | grep/rg TIM && kill PID
# TMUX
# if no session is started, start a new session
# when quitting tmux, try to attach
# NOTE: Turn On: to comment this function fitst and last line
function tmux() {
  if which tmux >/dev/null 2>&1; then
    test -z ${TMUX} && tmux
    while test -z ${TMUX}; do
      tmux attach || break
    done
  fi
}
