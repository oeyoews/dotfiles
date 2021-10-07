" 1. vim-pug
nnoremap <SPACE>vi <Cmd>PlugInstall<CR>
nnoremap <SPACE>vc <Cmd>PlugClean<CR>
nnoremap <SPACE>vu <Cmd>PlugUpdate<CR>

" 2. auto-pairs.vim
let g:AutoPairsFlyMode = 0

" 3. autoformat
nnoremap <leader>bf <cmd>Autoformat<cr>

" 7. suda.vim
nnoremap <SPACE>fE :SudaRead<CR>
nnoremap <SPACE>fw :SudaWrite<CR>

" 8. markdown-toc.vim
nnoremap <space>fmit :GenTocMarked<CR>

" 10. bullets.vim
let g:bullets_enabled_file_types = [
			\ 'markdown',
      \ ]

" 12. bookmark
let g:bookmark_sign = '📖'
let g:bookmark_highlight_lines = 1
let g:bookmark_auto_save_file = $HOME.'/.cache/vim_bookmarks'

" 13. vim-rooter
" silent for vim-rooter
let g:rooter_silent_chdir = 1
" disable resolve links
let g:rooter_resolve_links = 0
let g:rooter_patterns = [
      \ 'Makefile',
      \ '.git', 
      \ '^dotfiles',
      \ '>cheat',
      \ '>nvim',
      \ ]

" 14. quickrun
" TODO: have some limit for windows
nnoremap <silent> <SPACE>lr <Cmd>QuickRun<CR><C-w><C-w>G

" 17. hop.nvim
lua require'hop'.setup()
" mappings
nnoremap <SPACE>jj <Cmd>HopWord<CR>
nnoremap <SPACE>jl <Cmd>HopLine<CR>

" 25. notify
lua << EOF
vim.notify = require("notify")
vim.notify.setup({
  stages = "slide",
  timeout = 3000,
  background_colour = "Normal",
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})
EOF

" TODO:  write a function for notify and learn this noremap method 
nnoremap <silent> <leader>so :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC  <bar>
      \ call v:lua.vim.notify("Nvim config successfully reloaded!", 'info', 
      \ {'title': 'nvim-config', 'timeout': 2500, 'stages': 'slide'})<cr>

" StartupTime
command! Time StartupTime
