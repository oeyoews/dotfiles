vnoremap : :normal<SPACE>

" copy path to clipboard
nnoremap  <SPACE>fpy :let @+=expand('%:p')<CR> :echo "Copy path finished!"<CR>

" switch options
nnoremap <silent> <SPACE>tn :set number! relativenumber!<CR>
nnoremap <silent> <SPACE>tw :set wrap!<CR>
nnoremap <silent> <SPACE>tp :set spell!<CR>
nnoremap <silent> <SPACE>tl :set list<CR>
nnoremap <silent> <SPACE>tL :set nolist<CR>

" continue indent
noremap > >gv
noremap < <gv

" command mode
" noremap <space>hh :h<space>
noremap <space>hc :
nnoremap <SPACE>he :echo<SPACE>
nnoremap <SPACE>ss /

" buffer
" tips: :b[uffer] <number> or <buffername>
nnoremap <silent> <SPACE>bn :bn<CR>
" nnoremap <silent> <SPACE>bb :ls<CR>
nnoremap <silent> <SPACE>tt :tabs<CR>
nnoremap <silent> <SPACE>bd :bd<CR><C-L>
nnoremap <silent> <SPACE>bh :vnew<CR>
nnoremap <silent> <SPACE>bx :tabnew<CR>
nnoremap <silent><SPACE>bm :messages<CR>

" quit window
nnoremap <silent><SPACE>qq :q<CR>
nnoremap <silent><SPACE>qQ :q!<CR>

" window split
noremap s <nop>
nnoremap <SPACE>w- :split<CR>
nnoremap <SPACE>w/ :vsplit<CR>
nnoremap <SPACE>wh <C-w>h
nnoremap <SPACE>wj <C-w>j
nnoremap <SPACE>wk <C-w>k
nnoremap <SPACE>wl <C-w>l
nnoremap <SPACE>ww <C-w>w
nnoremap <SPACE>wm <C-w>o

" vim-plug
nnoremap <SPACE>pi :PlugInstall<CR>
nnoremap <SPACE>pc :PlugClean<CR>
nnoremap <SPACE>pu :PlugUpdate<CR>
nnoremap <SPACE>pU :PlugUpgrade<CR>

" misc
noremap L $

" copy and yank
noremap <SPACE>yy "*y
noremap <SPACE>pp "*p

nnoremap <C-a> ggVG
nnoremap guw gUawe
let g:mapleader = ','
inoremap jk <ESC>
nnoremap <silent><SPACE>fs :w<CR>
nnoremap <silent> <SPACE>sc :set<SPACE>hlsearch!<CR>
nnoremap <silent> <SPACE>fe :edit $MYVIMRC<CR>
nnoremap <silent> <SPACE>hrr :source $MYVIMRC<CR> :echom "Refreshed!"<CR>
noremap <ESC> <ESC><C-L>

nnoremap <SPACE>fS :wa<CR>
nnoremap <silent> <SPACE>fmt :tabnew ~/.config/nvim/todo.md<CR>
