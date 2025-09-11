# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# when loading plugin, you can input in terminal.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#export DISABLE_AUTO_UPDATE=true
export ZSH_DISABLE_COMPFIX="true"
# 有环境要求, 可以考虑禁用
export disable_git=1

# extract
plugins=( zsh-autosuggestions zsh-syntax-highlighting )

# This order is very important, don't modify it
export ZSH=$HOME/.config/ohmyzsh
ZSH_THEME="p10k/powerlevel10k"
[[ ! -f $ZSH/oh-my-zsh.sh ]] ||  source $ZSH/oh-my-zsh.sh
[[ ! -f $ZSH/themes/p10k/p10k-vanilla.zsh ]] || source $ZSH/themes/p10k/p10k-vanilla.zsh

export QT_IM_MODULE=fcitx5

# source /usr/share/nvm/init-nvm.sh
# [ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"

# tips
# change default shell
# chsh -s /xxx/zsh
# offline install zsh(no deps)
# https://github.com/oeyoews/zsh-bin