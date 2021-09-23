" auto-pairs.vim
let g:AutoPairsFlyMode = 0

" autoformat
autocmd! BufWrite *.c,*.h :Autoformat

" openbrower.vim
nnoremap <SPACE>bu :OpenBrowser<SPACE>https://
nnoremap <SPACE>bs :OpenBrowserSmartSearch<SPACE>


" calendar.vim
noremap <silent> <SPACE>at :Calendar -position=here<CR>

" choosewin.vim
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

" rainbow.brace.vim
let g:rainbow_active = 1

" suda.vim
nnoremap <SPACE>fE :SudaRead<CR>
nnoremap <SPACE>fw :SudaWrite<CR>

" startify.vim
nnoremap <SPACE>bH :Startify<CR>

" markdown-toc.vim
nnoremap <space>fmit :GenTocMarked<CR>

" css.vim
lua << EOF
require'colorizer'.setup()
EOF

" bullets.vim
let g:bullets_enabled_file_types = [
			\ 'markdown', 'text', 'scratch']

" markdown-preview.vim
nnoremap <space>fmp :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown', 'html', 'css' ]
nnoremap <SPACE>fmb bi**<ESC>ea**<ESC>

" cursor.vim
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
hi Cursor guifg=green guibg=green
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
