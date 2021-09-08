" bootstrap_before 将在读取用户配置后执行
" bootstrap_after 将在 VimEnter autocmd 之后执行
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html

" ===
" === before
" ===
function! myspacevim#before() abort

  let g:smoothie_enabled=0  " disable vim-smoothie

  let g:spacevim_filetype_icons['toml'] = ''

  " ===
  " === rainbow
  " ===
  let g:rainbow_active = 1

  " 开启保存 undo 历史功能
  set undofile
  " undo 历史保存路径
  " need mkdir it by hand
  set undodir=~/.undo_history/
  " eg: set nu?
  set updatetime=100
  set nofoldenable
  set so=0

  " show right command
  set showcmd

  " set list! set nolist
  "
  " show tab symbols
  " set list

  " vanilla quit
  set confirm

  set number relativenumber
  set completeopt=longest,menu
  set ignorecase

  " options: number yes
  set signcolumn=yes

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
  let g:NERDTreeDirArrowCollapsible = '✏️'

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

  " ===
  " === markdown-preview.nvim
  " ===
  nnoremap <space>fm :MarkdownPreviewToggle<CR>

endfunction
