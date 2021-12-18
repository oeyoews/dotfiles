_cdf()
{
    COMPREPLY=()
    opts="~/dotfiles ~/temp /tmp ~/.config/nvim ~/.sheets"
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "${opts}" -- $cur) )
    return 0
}

#complete -F _cdf cdf
