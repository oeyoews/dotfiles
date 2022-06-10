_trans()
{
    COMPREPLY=()
    opts="--speak"
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "${opts}" -- $cur) )
    return 0
}

# format functionName commandName
# -F ==> function
# -W ==> word
complete -F _trans trans
