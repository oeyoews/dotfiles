# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zprof analyse statup tim for zsh
# zmodload zsh/zprof

# disable secure check for compfix.zsh oh-my-zsh.sh
export ZSH_DISABLE_COMPFIX="true"

# omz
export ZSH=~/.omz
plugins=(zsh-autosuggestions  extract zsh-syntax-highlighting)
[[ ! -f $ZSH/oh-my-zsh.sh ]] ||  source $ZSH/oh-my-zsh.sh

# C-z to toggle current process (background/foreground)
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

export HISCONTROL=ignoreboth

# p10k
# To customize prompt, run `p10k configure` or edit ~/.omz/themes/p10k/p10k-rainbow.zsh.
[[ ! -f $ZSH/themes/p10k/powerlevel10k.zsh-theme ]] || source $ZSH/themes/p10k/powerlevel10k.zsh-theme
[[ ! -f $ZSH/themes/p10k/p10k-rainbow.zsh ]] || source $ZSH/themes/p10k/p10k-rainbow.zsh
