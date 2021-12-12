# https://jasonkayzk.github.io/2020/12/06/Bash%E5%91%BD%E4%BB%A4%E8%87%AA%E5%8A%A8%E8%A1%A5%E5%85%A8%E7%9A%84%E5%8E%9F%E7%90%86/
#https://blog.51cto.com/u_15127660/4197633
#https://segmentfault.com/a/1190000002994217
#https://segmentfault.com/a/1190000010953376
# /etc/bash_completion.d/

# functionName
_start()
{
    COMPREPLY=()
    opts="kooha goland nvui flameshot wezterm xournalpp"
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "${opts}" -- $cur) )
    return 0
}

# format functionName commandName
# -F ==> function
# -W ==> word
complete -F _start on
# this complete will override -F
#complete -W 'word1 word2 word3 hello' on
