" spacevim vimrc 2021-08-09 13:38:45 
" 函数 bootstrap_before 将在读取用户配置后执行，
" 而函数 bootstrap_after 将在 VimEnter autocmd 之后执行。

" ==
" before function
" ==
function! myspacevim#before() abort
  let g:mapleader = ','
  set nu
  "  better read
  set showbreak=->
  set so=3

  " shell title
  autocmd BufNewFile *.sh exec ":call AddTitleForShell()"
  function  AddTitleForShell()
    call append(0,"# CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    call append(1,"#!/bin/bash")
  endfunction

 " c shell
  autocmd BufNewFile *.c exec ":call AddTitleForC()"
  function  AddTitleForC()
    call append(0,"// CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    call append(1,"#include <stdio.h>")
  endfunction

  let s:NOTIFY = SpaceVim#api#import('notify')
  " call s:NOTIFY.notify('This is a simple notification!')

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
