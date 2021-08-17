# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zsh -f (vanilla zsh)
zmodload zsh/zprof

export ZSH_DISABLE_COMPFIX="true"

# omz
export ZSH=~/.omz
plugins=(zsh-autosuggestions extract zsh-syntax-highlighting)
ZSH_THEME="p10k/powerlevel10k"

# ZSH_THEME="random"
# ZSH_THEME_RANDOM_CNDIDATES=(
  # "p10k/powerlevel10k"
  # "archcraft")

  DISABLE_AUTO_UPDATE=true
  [[ ! -f $ZSH/oh-my-zsh.sh ]] ||  source $ZSH/oh-my-zsh.sh

# need install starship
# eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.omz/themes/p10k/p10k-rainbow.zsh.
[[ ! -f ~/.omz/themes/p10k/p10k-rainbow.zsh ]] || source ~/.omz/themes/p10k/p10k-rainbow.zsh
