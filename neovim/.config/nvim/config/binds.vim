" NOTE: must use double quote for down symbols, it't single quotes 
" this order is also important, should in first line
let g:mapleader = "\<Space>"
"  or usr space like it: let g:mapleader = ' '
" let g:mapleader = ','

nnoremap <silent> <leader>] :set paste<cr>o<esc>:set nopaste<cr>
nnoremap <silent> <leader>[ :set paste<cr>O<esc>:set nopaste<cr>

nnoremap <leader>sO <cmd>so %<cr>

" disable macro for q
nnoremap q <nop>

" clean minimal buffer
nnoremap <ESC> <ESC><C-L>

" quit insert mode fastly
inoremap jk <ESC>
" inoremap kj <ESC>

" copy path to clipboard
" nnoremap <silent> <SPACE>fyp <cmd>let @+=expand('%:p')<CR> \ <Cmd>echo "Copy path finished!"<CR>
nnoremap <silent> <leader>fyp :<C-U>silent update  <bar> let @+=expand('%:p') <bar>
      \ call v:lua.vim.notify("Copy file path finished", 'info', 
      \ {'title': 'nvim-config', 'timeout': 1000, 'stages': 'slide'})<cr>


" switch options
nnoremap <silent> <SPACE>tn :set number! relativenumber!<CR>
nnoremap <silent> <SPACE>tw :set wrap!<CR>
nnoremap <silent> <SPACE>ts :set spell!<CR>
nnoremap <silent> <SPACE>tl :set list<CR>
nnoremap <silent> <SPACE>tL :set nolist<CR>

" continue indent
vnoremap >> >gv
vnoremap << <gv

" command mode
noremap <SPACE>hh :
nnoremap <SPACE>ss /

" buffer
nnoremap <silent> <SPACE><tab> :bn<CR>
nnoremap <silent> <SPACE>bp :bp<CR>
nnoremap <silent> <SPACE>bd :bd<CR><C-L>
nnoremap <silent> <SPACE>bm :messages<CR>

" quit window
nnoremap <silent><SPACE>qq :q<CR>
nnoremap <silent><SPACE>qQ :q!<CR>
nnoremap <silent><SPACE>qa :qa<CR>

" window split
nnoremap <SPACE>wm <C-w>o
nnoremap <SPACE>ww <C-w>w
nnoremap <SPACE>w- :split<CR>
nnoremap <SPACE>w/ :vsplit<CR>
nnoremap <SPACE>wh <C-w>h
nnoremap <SPACE>wj <C-w>j
nnoremap <SPACE>wk <C-w>k
nnoremap <SPACE>wl <C-w>l

" better jump
noremap L $
noremap H ^

" demo
" copy and yank with system
noremap <SPACE>yy "*yy
noremap <SPACE>pp "*p
noremap <SPACE>pP "*P

" select all
nnoremap <C-a> ggVG
" clear all hlight words
nnoremap <silent> <SPACE>sc :set<SPACE>hlsearch!<CR>

nnoremap <silent> <SPACE>fe :edit $MYVIMRC<CR><cmd>NvimTreeToggle<cr>
nnoremap <silent> <SPACE>fv <cmd>edit ~/.config/nvim/config/plugs.vim<cr>

" save file
nnoremap <silent><SPACE>fs :w<CR>
" save all files
nnoremap <silent> <SPACE>fS <Cmd>wa<CR>

nnoremap <silent> <SPACE>fmt :tabnew ~/.config/nvim/todo.norg<CR>
