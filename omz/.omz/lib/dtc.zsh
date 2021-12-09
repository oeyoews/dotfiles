# functionName
_dtc()
{
  COMPREPLY=()
  #DRAFTFILENAME=($(find ~/.config/nvim/draft/*.md))
  DRAFTFILENAME=($(cd ~/.config/nvim/draft && ls))

  #SHORTNAME=()
  #for i in ${DRAFTFILENAME[i]}
  #do
    ## array
    #SHORTNAME[i]=${DRAFTFILENAME[i]##*/}
  #done

  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "${DRAFTFILENAME[*]}" -- $cur) )
  return 0
}

# format functionName commandName
complete -F _dtc dtc
