function! myspacevim#before() abort

  " set rtp+=~/path/to/your/localplugin

  " modify leader "\" to comma
  let g:mapleader = ','
  " let g:maplocalleader = '\\'


  " float terminal
  " let g:floaterm_keymap_toggle = '<Leader>ft'
  " let g:floaterm_keymap_kill ='<leader>fk'

endfunction

function! myspacevim#after() abort

  " cursor status in normal
  if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
    au InsertEnter,InsertChange *
          \ if v:insertmode == 'i' |
          \   silent execute '!echo -ne "\e[6 q"' | redraw! |
          \ elseif v:insertmode == 'r' |
          \   silent execute '!echo -ne "\e[4 q"' | redraw! |
          \ endif
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
  endif

  " usage: input 'xtime' and space or enter
  iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

  " shar system clipboard
  set clipboard^=unnamed 

  " better read
  set wrap
  set showbreak=->
  set so=5
  set nu

  " org mode for vim 
  " ?
  packloadall
  silent! helptags ALL

  echom "Enjoy vim! >^.^<"

endfunction

" function! myspacevim#before() abort
" call SpaceVim#custom#SPCGroupName(['G'], '+TestGroup')
" call SpaceVim#custom#SPC('nore', ['G', 't'], 'echom 1', 'echomessage 1', 1)
"
" call SpaceVim#custom#LangSPCGroupName('python', ['G'], '+TestGroup')
" call SpaceVim#custom#LangSPC('python', 'nore', ['G', 't'], 'echom 1', 'echomessage 1', 1)
" endfunction
