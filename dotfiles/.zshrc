# date: 2021年 06月 13日 星期日 16:36:14 CST
# author: oeyoews

# set path
export DOT=~/src/DOTFILES
export NOTE=~/src/note
export ZSH=~/.omz # don't modify it
export NVM=/usr/share/nvm
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

# ZSH
source $ZSH/p10k/powerlevel10k.zsh-theme  
source $ZSH/p10k-rainbow.zsh 
source $ZSH/plugins/zsh-autosuggestions.zsh 
bindkey ',' autosuggest-accept # in ranger, it not work.
# don't modify this plugin name and del files
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey "\eq" push-line-or-edit
source $ZSH/oh-my-zsh.sh  

export EDITOR='vim'
source $NVM/init-nvm.sh 

alias vimpk="vim $ZSH/p10k-rainbow.zsh"
# tips 
# d will show some recent directory
# l == ls -al
alias ipr='ip addr | rg 192'
alias sctl='systemctl'


function vitol() {
  if [ ! -e ~/todol.md ]; then
    touch ~/todol.md && vim ~/todol.md && echo "creat ~/todol.md"
  else
    vim ~/todol.md
  fi
}

# git 
alias gitc="git checkout ."
alias gitr="git rm --cache ."

setopt correct # auto correct mistakes
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one

# TMUX
function tmux() {
  if which tmux >/dev/null 2>&1; then
    # if no session is started, start a new session
    test -z ${TMUX} && tmux

            # when quitting tmux, try to attach
            while test -z ${TMUX}; do
              tmux attach || break
            done
  fi
}
