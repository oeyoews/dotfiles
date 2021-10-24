# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# when loading plugin, you can input in terminal.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH_DISABLE_COMPFIX="true"
export DISABLE_AUTO_UPDATE=true

# ===
# === zsh
# ===
export ZSH=~/.omz

# extract
plugins=( zsh-autosuggestions zsh-syntax-highlighting )

ZSH_THEME="p10k/powerlevel10k"
[[ ! -f $ZSH/oh-my-zsh.sh ]] ||  source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.omz/themes/p10k/p10k-pure.zsh ]] || source ~/.omz/themes/p10k/p10k-pure.zsh

# tmp
# can't expand this home symbol(for lua)
#export LUA_PATH="/home/oeyoews/tmp/?.lua;;"
