export NOTES=~/dotfiles/notes

export EDITOR=nvim
# Export
# export $PATH
# export PATH=$PATH:~/.emacs.d/bin
# TODO
# tips: this directory will be exist, so can't ust it to adjust
#[[ ! -d $HOME/dotfiles/bin ]] || export PATH=~/dotfiles/bin:$PATH
# when use echo $PATH, it output depend your export order

export PATH=$PATH:~/dotfiles/bin

#export Dot=~/dotfiles/bin
#export PATH=$PATH:$Dot
#unset Dot

# tips: one it right, but second step either to failed, or to add it again
#[[ -z $dt ]] && export dt=~/dotfiles
#export PATH=$PATH:$dt/bin
# tips: not add this variable to PATH, so, it's not export bin
#[[ ! -z $DBIN ]] || export DBIN=~/dotfiles/bin
#[[ ! -z $DBIN ]] || export DBIN=~/dotfiles/bin:PATH
# cheat
# TODO: source it, will have some output
# fix: by modify soz command(because it source .zshrc, ??? why)
export CHEATCOLORS=true
export CHEAT_USE_FZF=true
[[ ! -f ~/.cheatconf.yml ]] || export CHEAT_CONFIG_PATH="~/.cheatconf.yml"

# better man page
# TODO: dependcy: cat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
#export FZF_DEFAULT_COMMAND='fd --type f'
