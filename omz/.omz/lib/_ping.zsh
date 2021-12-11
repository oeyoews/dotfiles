_ping()
{
    COMPREPLY=()
    opts="bing.com google.com baidu.com oeyoews.top"
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "${opts}" -- $cur) )
    return 0
}

complete -F _ping ping
