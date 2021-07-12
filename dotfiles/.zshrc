# Date: 2021年 06月 13日 星期日 16:36:14 CST
# Author:

export ZSH=~/.omz
# Don't modify it and move it to other files

source $ZSH/p10k/powerlevel10k.zsh-theme  
source $ZSH/p10k-rainbow.zsh 
source $ZSH/plugins/zsh-autosuggestions.zsh 
# Key: comma
bindkey ',' autosuggest-accept
# In ranger, it not work
# Don't modify this plugin name and del files
# Key: alt + q
bindkey "\eq" push-line-or-edit
source $ZSH/oh-my-zsh.sh  

alias vihosts="sudo vim /etc/hosts"
# Lastly, put this highlighting to last, to fix some display bug
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
