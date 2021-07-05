# ==============================================================
# date: 2021年 06月 13日 星期日 16:36:14 CST
# author: oeyoews
# ==============================================================

DOT=$HOME/src/DOTFILES
NOTE=$HOME/src/note
ZSH=$HOME/.omz # don't modify it
NVM=/usr/share/nvm

# ==================
# ZSH
# ==================
source $ZSH/p10k/powerlevel10k.zsh-theme  # p10k 依赖文件
source $ZSH/p10k-rainbow.zsh # a link file
source $ZSH/plugins/zsh-autosuggestions.zsh 
bindkey ',' autosuggest-accept
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey "\eq" push-line-or-edit
source $ZSH/oh-my-zsh.sh  # load oh-my-zsh.sh

export EDITOR=vim
source $NVM/init-nvm.sh # install and source it
