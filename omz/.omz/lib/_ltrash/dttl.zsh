# oeyoews edit dirary list
_dttl()
{
  COMPREPLY=()
  DRAFTFILENAME=`ls -t1 ${Draft}/todo-daily`
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "${DRAFTFILENAME}" -- $cur) )
  return 0
}

#complete -F _dttl oedl
