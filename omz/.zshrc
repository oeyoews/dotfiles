# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zprof analyse statup tim for zsh
zmodload zsh/zprof

# disable secure check for compfix.zsh oh-my-zsh.sh
export ZSH_DISABLE_COMPFIX="true"

# omz
export ZSH=~/.omz
plugins=(zsh-autosuggestions zsh-syntax-highlighting extract)
[[ ! -f $ZSH/oh-my-zsh.sh ]] ||  source $ZSH/oh-my-zsh.sh

# p10k
# To customize prompt, run `p10k configure` or edit ~/.omz/p10k-rainbow.zsh.
# source $ZSH/p10k-rainbow.zsh
# ZSH_THEME="p10k/powerlevel10k"
[[ ! -f $ZSH/themes/p10k/powerlevel10k.zsh-theme ]] || source $ZSH/themes/p10k/powerlevel10k.zsh-theme
[[ ! -f $ZSH/themes/p10k/p10k-rainbow.zsh ]] || source $ZSH/themes/p10k/p10k-rainbow.zsh
