" spacevim vimrc 2021-08-09 13:38:45 
" 函数 bootstrap_before 将在读取用户配置后执行，
" 而函数 bootstrap_after 将在 VimEnter autocmd 之后执行。
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html

" ===============================
"            before             #
" ===============================
function! myspacevim#before() abort
  set nu
  " autocmd BufNewFile *.sh exec ":call AddTitleForShell()"
  " function  AddTitleForShell()
    " call append(0,"#!/bin/bash")
    " call append(1,"# CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    " normal G
    " normal o
  " endfunction
  " autocmd BufNewFile *.c exec ":call AddTitleForC()"
  " function  AddTitleForC()
    " call append(0,"#include <stdio.h>")
    " call append(1,"// CreatTime: ".strftime("%Y-%m-%d %H:%M"))
    " normal G
    " normal o
  " endfunction
  " endfunction

  " translate keybindings
  " function! myspacevim#before() abort
  let g:mapleader = ','
  """ Configuration example
  " Echo translation in the cmdline
  nmap <silent> <Leader>t <Plug>Translate
  vmap <silent> <Leader>t <Plug>TranslateV
  " Display translation in a window
  nmap <silent> <Leader>w <Plug>TranslateW
  vmap <silent> <Leader>w <Plug>TranslateWV
  " Replace the text with translation
  nmap <silent> <Leader>r <Plug>TranslateR
  vmap <silent> <Leader>r <Plug>TranslateRV
  " Translate the text in clipboard
  nmap <silent> <Leader>x <Plug>TranslateX
endfunction


" ===============================
"            after              #
" ===============================
function! myspacevim#after() abort
  " nerdtree 
  let g:NERDTreeDirArrowExpandable = ''
  let g:NERDTreeDirArrowCollapsible = '▾'
  " better nowrap scroll
  set ss=1
  set nobackup
  " no swapfile
  set noswf
  " insert time 
  iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
  "  share system clipboard
  set clipboard^=unnamed 
  " gui font
  set guifont=Droid\ Sans\ Mono\ 14
nnoremap <leader>qq :q!<CR>
nnoremap <leader>w :w<CR>
endfunction
