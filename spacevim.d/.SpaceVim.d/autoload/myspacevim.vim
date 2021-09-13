" bootstrap_before 将在读取用户配置后执行
" bootstrap_after 将在 VimEnter autocmd 之后执行
"
" tutorial --- {{{
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html
" https://www.kancloud.cn/kancloud/learn-vimscript-the-hard-way/49335
" }}}

" === Before --- {{{
" ===
function! myspacevim#before() abort

  " ===
  " === some tips
  " ===
  " redraw minbuffer: Ctrl l
  " show filename: Ctrl g
  " vim -u *.vim

  " ===
  " === misc settings
  " ===
  " NOTE: must in before
  let g:mapleader = ','
  set number relativenumber " must before startify

  " ===
  " === plugins
  " ===
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

  " ==
  " == GitGutter
  " ==
  " NOTE: must in before
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
  " NOTE: must in before
  let g:rainbow_active = 0 " if set 1, it's conflicts to nerdtree
  nnoremap <silent>  <space>tr :RainbowToggle<CR>

endfunction
" }}}

" === After -- {{{
" ===
function! myspacevim#after() abort

  " ===
  " === all nerdtree
  " ===
  let g:NERDTreeDirArrowExpandable = '➤' "  ➤ 
  let g:NERDTreeDirArrowCollapsible = ''
  let g:NERDTreeShowHidden=0 " let g:NERDTreeMapCustomOpen = '<TAB>' " doesn't work
  autocmd FileType nerdtree nmap <Tab> <CR>
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1
  let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
  let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
  let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
  let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
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
  " set nowrap  " must in after
  let &wrap = 0
  set mouse=a
  noremap <space>hh :h<space>
  nnoremap <silent> <leader>qq :q!<CR>
  noremap <space>su :SPUpdate<CR>
  set smartcase
  set scrolloff=0
  set confirm " better quit
  set signcolumn=yes " options: number yes
  set ignorecase
  let g:smoothie_enabled=0  " disable vim-smoothie
  let g:spacevim_filetype_icons['toml'] = ''
  set updatetime=100
  set foldmethod=marker
  set nofoldenable " disable automatical fold code, you can fold code by hand
  " inoremap <C-D> <ESC>ddi
  " inoremap <C-U> <ESC>gUaw
  " inoremap <C-J> <ESC>ji
  " inoremap <C-K> <ESC>ki
  let $_MYVIMRC .= "~/.SpaceVim.d/autoload/myspacevim.vim"
  nnoremap <silent> <SPACE>fvp :tabnew $_MYVIMRC<CR>
  nnoremap <SPACE>fvP :source $_MYVIMRC<CR>:echom "Refresh finished!"<ESC> 
  nnoremap <silent> <SPACE>ff :Leaderf file --popup<CR>
  "
  augroup _myautocmd
    autocmd!
    autocmd FileType c :iabbrev <buffer> inc #include <stdio.h><ESC><CR><left>
    " NOTE: can't have whitespace in regrep express
    " autocmd BufWritePre,BufRead *.vim,*.c,*.h  :normal ==$ " in save file, " it something wrong
    " autocmd BufWritePost $_MYVIMRC source $_MYVIMRC " doesn't work
  augroup END
 "
  noremap L $
  " must comment next line, because of doouble quote error
  " let @a = "hello!"  # "ap for register, or echo @a @" == unnamed register

  " ===
  " === markdown-preview.nvim
  " ===
  nnoremap <silent> <space>fm :MarkdownPreviewToggle<CR> :echom " markdownpreview toggled"<CR>

  " ===
  " === calendar.vim
  " ===
  " nnoremap <space>aCy :Calendar -view=year -split=horizontal -position=below -height=12<CR>
  nnoremap <space>aC :<C-U>Calendar -view=clock<CR>

  " ===
  " === vim-better_whitespace.vim
  " ===
  let g:better_whitespace_enabled=1
  let g:strip_whitespace_on_save=1

endfunction
" }}}
