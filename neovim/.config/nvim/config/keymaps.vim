" NOTE: must use double quote for down symbols, it't single quotes 
let g:mapleader = "\<Space>"
" let g:mapleader = ','

" disable macro for q
nnoremap q <nop>

" clean minimal buffer
nnoremap <ESC> <ESC><C-L><CR>

" quit insert mode fastly
inoremap jk <ESC>
inoremap kj <ESC>

" copy path to clipboard
nnoremap  <SPACE>fpy :let @+=expand('%:p')<CR> <Cmd>echo "Copy path finished!"<CR>

" switch options
nnoremap <silent> <SPACE>tn :set number! relativenumber!<CR>
nnoremap <silent> <SPACE>tw :set wrap!<CR>
nnoremap <silent> <SPACE>tp :set spell!<CR>
nnoremap <silent> <SPACE>tl :set list<CR>
nnoremap <silent> <SPACE>tL :set nolist<CR>

" continue indent
vnoremap > >gv
vnoremap < <gv

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

" smart quit for some filetype
autocmd! FileType help,qf,startuptime,quickrun,snippets nnoremap <silent> q <Cmd>q<CR>

" window split
nnoremap <SPACE>wm <C-w>o
nnoremap <SPACE>ww <C-w>w
nnoremap <SPACE>w- :split<CR>
nnoremap <SPACE>w/ :vsplit<CR>
nnoremap <SPACE>wh <C-w>h
nnoremap <SPACE>wj <C-w>j
nnoremap <SPACE>wk <C-w>k
nnoremap <SPACE>wl <C-w>l

" jump line end
noremap L $
" copy and yank with system
noremap <SPACE>yy "*y
noremap <SPACE>pp "*p

nnoremap <C-a> ggVG
nnoremap guw gUawe
nnoremap <silent> <SPACE>sc :set<SPACE>hlsearch!<CR>
nnoremap <silent> <SPACE>fe :edit $MYVIMRC<CR>
nnoremap <silent> <SPACE>fv <cmd>edit ~/.config/nvim/config/plug.vim<cr>

" save file
nnoremap <silent><SPACE>fs :w<CR>

" save all files
nnoremap <silent> <SPACE>fS <Cmd>wa<CR>

nnoremap <silent> <SPACE>fmt :tabnew ~/.config/nvim/todo.md<CR>

nnoremap <silent> <SPACE>so <Cmd>so %<CR><Cmd>echom "Refreshed!"<CR>

" show scriptnames in new buffer
" command Sc redir @">|silent scriptnames|redir END|enew|put
command Sc enew|pu=execute('scriptnames') 
