" vimtex
autocmd FileType tex nnoremap <leader>ltt <cmd>VimtexCompile<cr>
autocmd FileType tex nnoremap <leader>ltc <cmd>VimtexClean<cr>
autocmd FileType tex nnoremap <leader>ltv <cmd>VimtexView<cr>

let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
set conceallevel=1

" latex preview
let g:livepreview_previewer = 'okular'
autocmd FileType tex nnoremap  <leader>ltp <cmd>LLPStartPreview<cr>
