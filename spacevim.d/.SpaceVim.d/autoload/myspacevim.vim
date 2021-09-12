" bootstrap_before 将在读取用户配置后执行
" bootstrap_after 将在 VimEnter autocmd 之后执行
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html

" ===
" === before
" ===
function! myspacevim#before() abort

  let g:spacevim_custom_plugins = [
  \ ['luochen1990/rainbow'],
  \ ['justinmk/vim-syntax-extra'],
  \ ['yianwillis/vimcdoc'],
  \ ['ap/vim-css-color'],
  \ ['ntpeters/vim-better-whitespace'],
  \ ['iamcco/markdown-preview.nvim'],
  \ ['tpope/vim-capslock'],
  \ ['machakann/vim-highlightedyank'],
  \ ['tiagofumo/vim-nerdtree-syntax-highlight'],
  \ ['ryanoasis/vim-devicons'],
  \ ]

  noremap <space>su :SPUpdate<CR>

  let g:smoothie_enabled=0  " disable vim-smoothie
  let g:spacevim_filetype_icons['toml'] = ''

  " ==
  " == GitGutter
  " ==
  " must in before
  " let g:gitgutter_signs = 0
  let g:gitgutter_sign_allow_clobber = 0
  let g:gitgutter_map_keys = 0
  let g:gitgutter_override_sign_column_highlight = 0
  let g:gitgutter_preview_win_floating = 1
  let g:gitgutter_sign_added = '▎'
  let g:gitgutter_sign_modified = '░'
  let g:gitgutter_sign_removed = '▏'
  let g:gitgutter_sign_removed_first_line = '▔'
  let g:gitgutter_sign_modified_removed = '▒'
  " autocmd BufWritePost * GitGutter
  nnoremap <LEADER>gf :GitGutterFold<CR>
  nnoremap H :GitGutterPreviewHunk<CR>
  nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
  nnoremap <LEADER>g= :GitGutterNextHunk<CR>

  " ===
  " === rainbow
  " ===
  " must in before
  let g:rainbow_active = 0 " if set 1, it's conflicts to nerdtree
  nnoremap <silent>  <space>tr :RainbowToggle<CR>

  set updatetime=100
  set nofoldenable
  set so=0

  " better quit
  set confirm

  set number relativenumber
  " set completeopt=longest,menu
  set ignorecase

  " options: number yes
  set signcolumn=yes

  " set leader
  let g:mapleader = ','

endfunction


" ===
" === After
" ===
function! myspacevim#after() abort

  " ===
  " === nerdtree
  " ===
  let g:NERDTreeDirArrowExpandable = '➤'
  "  ➤ 
  let g:NERDTreeDirArrowCollapsible = ''
  " let g:NERDTreeMapCustomOpen = '<TAB>' " doesn't work
  let g:NERDTreeShowHidden=0
  autocmd FileType nerdtree nmap <Tab> <CR>
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1
  let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
  let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
  let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
  let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
  " If you have vim-devicons you can customize your icons for each file type.
  let g:NERDTreeExtensionHighlightColor = {} "this line is needed to avoid error
  let g:NERDTreeExtensionHighlightColor['yml'] = '' "assigning it to an empty string will skip highlight
  let g:NERDTreeLimitedSyntax = 1
  let g:NERDTreeHighlightCursorline = 0

  " ===
  " === misc settings
  " ===
  set sidescroll=1
  set nobackup
  set noswapfile
  set clipboard^=unnamed
  set guifont=Droid\ Sans\ Mono\ 14
  nnoremap <leader>qq :q!<CR>
  set nowrap  " must in after
  set mouse=a
  noremap <space>hh :h<space>

  " ===
  " === markdown-preview.nvim
  " ===
  nnoremap <silent> <space>fm :MarkdownPreviewToggle<CR>

  " ===
  " === calendar.vim
  " ===
  nnoremap <space>aCy :Calendar -view=year -split=horizontal -position=below -height=12<CR>
  nnoremap <space>aCl :Calendar -view=clock<CR>

  " ===
  " === vim-better_whitespace.vim
  " ===
  let g:better_whitespace_enabled=1
  let g:strip_whitespace_on_save=1

endfunction
