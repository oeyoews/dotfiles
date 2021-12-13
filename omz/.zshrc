# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# when loading plugin, you can input in terminal.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH_DISABLE_COMPFIX="true"
#export DISABLE_AUTO_UPDATE=true

# ===
# === zsh
# ===
export ZSH=~/.omz

# extract
plugins=( zsh-autosuggestions zsh-syntax-highlighting )


# This order is very important, don't modify it
ZSH_THEME="p10k/powerlevel10k"
[[ ! -f $ZSH/oh-my-zsh.sh ]] ||  source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.omz/themes/p10k/p10k-vanilla.zsh ]] || source ~/.omz/themes/p10k/p10k-vanilla.zsh

# temp
#export JDTLS_HOME=/usr/share/java/jdtls/config_linux/
#eval "$(starship init zsh)"
#

# gopath
# TODO:??? why export path is repeat? but for gopath not
export GOPATH="$HOME/.local/share/go"
#export GOPATH=$GOPATH:$HOME/temp/goprojects
#export GOPATH=$GOPATH:$HOME/temp/goprojects/src/examplepackage

# TODO
#export GOROOT=$GOROOT:$HOME/temp/GoTest
#
# just support bash
#export HISTTIMEFORMAT="%F %T `whoami` "
