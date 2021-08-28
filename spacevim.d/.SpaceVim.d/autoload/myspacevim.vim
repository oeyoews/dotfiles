" spacevim vimrc 2021-08-09 13:38:45 
" bootstrap_before 将在读取用户配置后执行
" bootstrap_after 将在 VimEnter autocmd 之后执行
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html

" ===============================
"            before             #
" ===============================
function! myspacevim#before() abort

  " vimsector
  " let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
  " let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

  set nu
  set so=5
  let g:mapleader = ','

  " translation 
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


  " GitGutter
  let g:gitgutter_sign_allow_clobber = 0
  let g:gitgutter_map_keys = 0
  let g:gitgutter_override_sign_column_highlight = 0
  let g:gitgutter_preview_win_floating = 1
  let g:gitgutter_sign_added = '▎'
  let g:gitgutter_sign_modified = '░'
  let g:gitgutter_sign_removed = '▏'
  let g:gitgutter_sign_removed_first_line = '▔'
  let g:gitgutter_sign_modified_removed = '▒'
  nnoremap <LEADER>gf :GitGutterFold<CR>
  nnoremap H :GitGutterPreviewHunk<CR>
  nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
  nnoremap <LEADER>g= :GitGutterNextHunk<CR>

endfunction


" ===============================
" #           after             #
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
  " clipboard
  set clipboard^=unnamed 
  " gui font
  set guifont=Droid\ Sans\ Mono\ 14
  nnoremap <leader>qq :q!<CR>
  nnoremap <leader>w :w<CR>

  map tx :r !figlet 
  map th :%TOhtml

endfunction
