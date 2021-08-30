" bootstrap_before 将在读取用户配置后执行
" bootstrap_after 将在 VimEnter autocmd 之后执行
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html

" ===
" === before
" ===
function! myspacevim#before() abort



  " eg: set nu?
  set updatetime=100
  set number
  set ignorecase
  " options: `number, `yes
  set signcolumn=yes
  set scroll=2
  let g:mapleader = ','

  " GitGutter
  let g:gitgutter_sign_allow_clobber = 0
  let g:gitgutter_map_keys = 0
  let g:gitgutter_override_sign_column_highlight = 1
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


" ===
" === after
" ===
function! myspacevim#after() abort

  " nerdtree 
  " ▾ ✏️  ➤ ❯
  let g:NERDTreeDirArrowExpandable = '➤'
  let g:NERDTreeDirArrowCollapsible = '✏️'

  set sidescroll=1
  set nobackup
  set noswapfile
  set clipboard^=unnamed 
  set guifont=Droid\ Sans\ Mono\ 14
  nnoremap <leader>qq :q!<CR>

  map tx :r !figlet 
  map th :%TOhtml

endfunction
