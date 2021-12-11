_vif()
{
    COMPREPLY=()
    opts="~/.zshrc ~/.omz/lib/01-functions.zsh ~/.config/kitty/kitty.local.conf ~/.config/wezterm/wezterm.lua ~/.omz/lib/private.zsh ~/.ssh/config ~/.config/alacritty/alacritty.yml"
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "${opts}" -- $cur) )
    return 0
}

complete -F _vif vif
