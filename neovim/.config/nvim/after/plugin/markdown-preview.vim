" autocmd FileType markdown
nnoremap <space>fmp :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
" let g:mkdp_command_for_global = 1
let g:mkdp_filetypes = [
      \ 'markdown',
      \ 'html',
      \ 'css']
nnoremap <SPACE>fmb bi**<ESC>ea**<ESC>
