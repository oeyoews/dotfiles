" spacevim vimrc 2021-08-09 13:38:45 
" 函数 bootstrap_before 将在读取用户配置后执行，
" 而函数 bootstrap_after 将在 VimEnter autocmd 之后执行。
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html

function! myspacevim#before() abort
  let g:mapleader = ','
  set nu
  " set sbr=->
  set noswf
  set so=3
endfunction

function! myspacevim#after() abort
  " fix after
  set ss=1
  " insert time 
  iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
  "  share system clipboard
  set clipboard^=unnamed 
  " fix after wrap
  set nowrap
  " gui font
  set guifont=Droid\ Sans\ Mono\ 14
endfunction

" auto add head title
function! myspacevim#before() abort
  " todo 
  " sh
  autocmd BufNewFile *.sh exec ":call AddTitleForShell()"
  function  AddTitleForShell()
    call append(0,"#!/bin/bash")
    call append(1,"# CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    normal G 
    normal o
  endfunction

  " c
  autocmd BufNewFile *.c exec ":call AddTitleForC()"
  function  AddTitleForC()
    call append(0,"#include <stdio.h>")
    call append(1,"// CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    normal G 
    normal o
  endfunction

endfunction
