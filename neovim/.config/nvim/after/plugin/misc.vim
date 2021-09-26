" vim-pug
nnoremap <SPACE>vi <Cmd>PlugInstall<CR>
nnoremap <SPACE>vc <Cmd>PlugClean<CR>
nnoremap <SPACE>vu <Cmd>PlugUpdate<CR>

" auto-pairs.vim
let g:AutoPairsFlyMode = 0

" autoformat
autocmd! BufWrite *.c,*.h :Autoformat

" openbrower.vim
nnoremap <SPACE>bu :OpenBrowser<SPACE>https://
nnoremap <SPACE>bs :OpenBrowserSmartSearch<SPACE>

" calendar.vim
noremap <silent> <SPACE>at <cmd>Calendar -position=here<CR>

" choosewin.vim
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

" suda.vim
nnoremap <SPACE>fE :SudaRead<CR>
nnoremap <SPACE>fw :SudaWrite<CR>

" markdown-toc.vim
nnoremap <space>fmit :GenTocMarked<CR>

" css.vim
lua << EOF
require'colorizer'.setup()
EOF

" bullets.vim
let g:bullets_enabled_file_types = [
			\ 'markdown',
      \ 'text',
      \ 'scratch'
      \ ]

" markdown-preview.vim
nnoremap <space>fmm :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [
      \ 'markdown',
      \ 'html',
      \ 'css'
      \ ]

" cursor
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
hi Cursor guifg=green guibg=green
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" vim-rooter
" silent for vim-rooter
let g:rooter_silent_chdir = 1
" disable resolve links
let g:rooter_resolve_links = 0
let g:rooter_patterns = [
      \ 'Makefile',
      \ '.git', 
      \ '^dotfiles',
      \ '>cheat',
      \ ]

" quickrun
nnoremap <silent> <SPACE>lr <Cmd>QuickRun<CR>

" toggleterm
nnoremap <SPACE>tt <Cmd>ToggleTerm<CR>

" sniprun
noremap <SPACE>ll <Cmd>SnipRun<CR>
noremap <SPACE>lc <Cmd>SnipClose<CR>

" hop.nvim
lua << EOF
require'hop'.setup()
EOF
" mappings
nnoremap <SPACE>jj <Cmd>HopWord<CR>
nnoremap <SPACE>jl <Cmd>HopLine<CR>

" highlight yank
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}
let g:rainbow_active = 1
