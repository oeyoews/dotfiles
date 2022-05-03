#fishing="
#███████╗██╗███████╗██╗ ██╗██╗███╗ ██╗ ██████╗
#██╔════╝██║██╔════╝██║ ██║██║████╗ ██║██╔════╝
#█████╗ ██║███████╗███████║██║██╔██╗ ██║██║ ███╗
#██╔══╝ ██║╚════██║██╔══██║██║██║╚██╗██║██║ ██║
#██║ ██║███████║██║ ██║██║██║ ╚████║╚██████╔╝
#╚═╝ ╚═╝╚══════╝╚═╝ ╚═╝╚═╝╚═╝ ╚═══╝ ╚═════╝"

Struggle="
███████╗████████╗██████╗ ██╗   ██╗ ██████╗  ██████╗ ██╗     ███████╗
██╔════╝╚══██╔══╝██╔══██╗██║   ██║██╔════╝ ██╔════╝ ██║     ██╔════╝
███████╗   ██║   ██████╔╝██║   ██║██║  ███╗██║  ███╗██║     █████╗
╚════██║   ██║   ██╔══██╗██║   ██║██║   ██║██║   ██║██║     ██╔══╝
███████║   ██║   ██║  ██║╚██████╔╝╚██████╔╝╚██████╔╝███████╗███████╗
╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝"
#echo $fishing | lolcat
echo $Struggle | lolcat
date | lolcat

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
# TODO: gopath
#export GOPATH="$HOME/.local/share/go"
#在这种模式下，Go 会表现： 当项目路径在 GOPATH 目录外部时， 设置为 GO111MODULE = on 当项目路径位于 GOPATH 内部时，即使存在 go.mod, 设置为 GO111MODULE = off。
#Go 1.11 引入了 Go 模块。 Go Modules 不使用 GOPATH 存储每个软件包的单个 git checkout，而是存储带有 go.mod 标记版本的标记版本，并跟踪每个软件包的版本。
#在 Go 1.13 下， GO111MODULE 的默认行为 (auto) 语义变了。
#当存在 go.mod 文件时或处于 GOPATH 外， 其行为均会等同于 GO111MODULE=on。相当于 Go 1.13 下你可以将所有的代码仓库均不存储在 GOPATH 下。
#当项目目录处于 GOPATH 内，且没有 go.mod 文件存在时其行为会等同于 GO111MODULE=off。
#export GO111MODULE=auto
#export GOPATH=$GOPATH:$HOME/GolandProjects/awesomeProject2
#export GOPATH=$GOPATH:$HOME/temp/goprojects/src/examplepackage

# TODO
#export GOROOT=$GOROOT:$HOME/temp/GoTest
#
# just support bash
#export HISTTIMEFORMAT="%F %T `whoami` "
export QT_IM_MODULE=fcitx5
#export QT_QPA_PLATFORMTHEME='gnome'

# complete parameter for emacs and emacsclient
compdef _gnu_generic emacs emacsclient
