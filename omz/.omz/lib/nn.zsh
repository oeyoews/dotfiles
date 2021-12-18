_nn()
{
  COMPREPLY=()
  DRAFTFILENAME=`ls -t1 ~/dotfiles/notes/wiki`

  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "${DRAFTFILENAME}" -- $cur) )
  #COMPREPLY=( $(compgen -W "${DRAFTFILENAMEs[*]}" -- $cur) )
  return 0
}

# format functionName commandName
complete -F _nn nn
