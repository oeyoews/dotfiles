" spacevim vimrc 2021-08-09 13:38:45 

" ==
" before function
" ==
function! myspacevim#before() abort
  let g:mapleader = ','
  set nu
  "  better read
  set showbreak=->
  set so=3

  autocmd BufNewFile *.sh exec ":call AddTitleForShell()"
  function  AddTitleForShell()
    call append(0,"# CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    call append(1,"#!/bin/bash")
  endfunction


  autocmd BufNewFile *.c exec ":call AddTitleForC()"
  function  AddTitleForC()
    call append(0,"// CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    call append(1,"#include <stdio.h>")
  endfunction

endfunction

" ==
" after function
" ==
function! myspacevim#after() abort
  " better cursor 
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

  " insert format time 
  iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

  "  share system clipboard
  set clipboard^=unnamed 

  set wrap

  " org-mode 
  packloadall
  silent! helptags ALL

  " message
  " echom "Enjoy vim! >^.^<"
endfunction
