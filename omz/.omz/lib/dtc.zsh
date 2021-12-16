# functionName
_dtc()
{
  COMPREPLY=()
  #DRAFTFILENAME=($(find ~/.config/nvim/draft/*.md))
  #DRAFTFILENAME=($(cd ~/.config/nvim/draft && ls))
  # TODO: 只显示最近三天的: today, yestday, before yestday
  #DRAFTFILENAME=$(cd ~/dotfiles/draft && ls -t *.md )
  #NOTE: this { just exec command in your current shell
  #DRAFTFILENAME={ cd ~/dotfiles/draft; ls -t *.md; }
  #DRAFTFILENAME=$(cd ~/dotfiles/draft; ls -t ;)
  #TODO: 补全depend zsh function
  #DRAFTFILENAME=$(ls -t ~/dotfiles/draft | sort -r)
  #DRAFTFILENAME={ ls -t ~/dotfiles/draft; }
  #DRAFTFILENAME=`ls -t1 ~/dotfiles/notes/draft_notes`
  DRAFTFILENAME=`ls -t1 ${Draft}`
  #DRAFTFILENAMEs=(${DRAFTFILENAME[*]%.*})

  #SHORTNAME=()
  #for i in ${DRAFTFILENAME[i]}
  #do
    ## array
    #SHORTNAME[i]=${DRAFTFILENAME[i]##*/}
  #done

  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "${DRAFTFILENAME}" -- $cur) )
  #COMPREPLY=( $(compgen -W "${DRAFTFILENAMEs[*]}" -- $cur) )
  return 0
}

# format functionName commandName
complete -F _dtc dtc
