function! myspacevim#before() abort
  " let g:neomake_c_enabled_makers = ['clang']
  " nnoremap jk <esc>

endfunction
"
"
function! myspacevim#after() abort
  " iunmap jk

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

  "
  " insert time in insert mode
  " usage: input 'xtime' and space or enter
  iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

  set clipboard^=unnamed 
  set wrap
  set so=5
  set showbreak=->
endfunction
"
"
" function! myspacevim#before() abort
" call SpaceVim#custom#SPCGroupName(['G'], '+TestGroup')
" call SpaceVim#custom#SPC('nore', ['G', 't'], 'echom 1', 'echomessage 1', 1)
" endfunctionh
"
" function! myspacevim#before() abort
" call SpaceVim#custom#LangSPCGroupName('python', ['G'], '+TestGroup')
" call SpaceVim#custom#LangSPC('python', 'nore', ['G', 't'], 'echom 1', 'echomessage 1', 1)
" endfunction

function! myspacevim#before() abort
  " set rtp+=~/path/to/your/localplugin
endfunction
