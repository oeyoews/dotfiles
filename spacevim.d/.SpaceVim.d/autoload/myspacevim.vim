function! myspacevim#before() abort
  " let g:neomake_c_enabled_makers = ['clang']
  " nnoremap jk <esc>
  " set so=5
  set noswapfile 
  set  wrap

endfunction
"
function! myspacevim#after() abort
  " iunmap jk
  " insert time in insert mode
  " usage: input 'xtime' and space or enter
  " iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
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

" function! myspacevim#before() abort
" set rtp+=~/path/to/your/localplugin
" endfunction
