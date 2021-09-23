let g:AutoPairsFlyMode = 0

autocmd! BufWrite *.c,*.h :Autoformat

nnoremap <SPACE>bu :OpenBrowser<SPACE>https://
nnoremap <SPACE>bs :OpenBrowserSmartSearch<SPACE>


noremap <silent> <SPACE>at :Calendar -position=here<CR>

nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

let g:rainbow_active = 1

nnoremap <SPACE>fE :SudaRead<CR>
nnoremap <SPACE>fw :SudaWrite<CR>

nnoremap <SPACE>bH :Startify<CR>

autocmd FileType markdown nnoremap <space>fmit :GenTocMarked<CR>

lua << EOF
require'colorizer'.setup()
EOF


