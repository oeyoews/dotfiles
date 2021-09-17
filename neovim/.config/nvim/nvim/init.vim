set number relativenumber
" NOTE: jk or other map is not work for timeoutlen=0
" set timeoutlen=0
filetype on
filetype plugin on
" TODO: dashboard which-key gitgutter(nvim), airline(or), undotree(plus),
" DONE: two insert
" code-runner
" TODO: 记住光标位置
" TODO: 标签
" TODO: bell format
" TODO: canlendar 写的位置, configure it
" TODO: 按键延迟
syntax on
set ruler
set smartcase
set noshowcmd  " right nolonger appear
set noshowmode " reduct two insert stats
" TODO
set showmatch
set clipboard^=unnamed
set shortmess=atI  " disable show welcome
inoremap jk <ESC>
" some bug
nnoremap <SPACE>fs :w<CR>
set shortmess+=a
set guifont=Droid\ Sans\ Mono\ 14
nnoremap <silent> <SPACE>q :q<CR>
" demos demos ;

" ===
" === command mode
" ===
" space h space == :h spacevim and use tab to switch next item
noremap <space>hh :h<space>
noremap <space>hc :
nnoremap <SPACE>he :echo<SPACE>

set sidescroll=1
set nobackup
set noswapfile
let &wrap = 0 " set nowrap   must in after

let g:mapleader = ','

set nofoldenable " disable automatical fold code, you can fold code by hand must in before
nnoremap <C-A> ggVG
set confirm
nnoremap <silent> <leader>qq :q!<CR>
set scrolloff=1
set ignorecase
set signcolumn=yes " options: number yes

" 按键延迟检测
set updatetime=500
set foldmethod=marker
let $MYVIMRC = "$HOME/.config/nvim/init.vim"
nnoremap <SPACE>tp :tabnew $MYVIMRC<CR>:echom "Open MYVIMRC!"<CR>
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" eg: noremap <SPACE>tP <CR>:source<SPACE>$MYVIMRC<CR>:echom "Refresh finished!"<ESC>
nnoremap <silent> <SPACE>bm :messages<CR>
" nnoremap <silent> <SPACE>a; mqA;<ESC>`q :echom "Add a Comma in the end!"<CR>
noremap L $
nnoremap <SPACE>ti :source<SPACE>%<CR>:PlugInstall<CR>
nnoremap <SPACE>tc :source<SPACE>%<CR>:PlugClean<CR>
" TODO: tabnext and tabNext
" smart quit
nnoremap <silent> <SPACE>bn :tabnext<CR>
nnoremap <silent> <SPACE>bp :tabprevious<CR>
nnoremap <silent> <SPACE>bN :tabnew<CR>
nnoremap <SPACE>wm :only<CR>
" TODO: space bd

" ===
" === vim-plug
" ===
call plug#begin('$HOME/.config/nvim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'itchyny/calendar.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'yianwillis/vimcdoc'
Plug 'ap/vim-css-color'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-capslock'
Plug 'tyru/open-browser.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'folke/which-key.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'itchyny/lightline.vim'
call plug#end()


" ===
" === markdown-preview.nvim
" ===
" autocmd FileType markdown if open it directly, can't use this command TODO
autocmd FileType markdown nnoremap <space>tm :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0


" ===
" === vim-markdown-toc
" ===
autocmd FileType markdown nnoremap <space>tt :GenTocMarked<CR>

" ===
" === rainbow
" ===
" TODO need test shortkey
let g:rainbow_active = 0 " if set 1, it's conflicts to nerdtree
nnoremap <space>tr :RainbowToggle<CR>:echom "enable rainbow_bract!"<CR>


" ===
" === vim-better_whitespace.vim
" ===
" TODO: how to silent?
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" ===
" === open-browser.vim
" ===
nnoremap <SPACE>bu :OpenBrowser<SPACE>https://
" eg: command! Open OpenBrowserSmartSearch
nnoremap <SPACE>bs :OpenBrowserSmartSearch<SPACE>

" ===
" === comment.vim
" ===
" TODO
" https://github.com/preservim/nerdcommenter/blob/master/README.md
"
" ===
" ===
" TODO
"https://github.com/folke/tokyonight.nvim
autocmd FileType nerdtree nmap <Tab> <CR>
" TODO: nerdtree

" ===
" ===
" tokyonight
" TODO: some options need config
colorscheme tokyonight
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" ===
" === which-key.vim
" TODO
" https://github.com/folke/which-key.nvi
"
" TODO
"https://github.com/folke/trouble.nvim


" ===
" === vim-markdown
" ===
" NOTE: reagin config for nvim
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal_code_blocks = 1  " disable hiden code-blocks
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_follow_anchor = 1  " jump: ge
" gx like gopen for [demo](http)
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_edit_url_in = 'tab'
