" 1. vim-pug
nnoremap <SPACE>vi <Cmd>PlugInstall<CR>
nnoremap <SPACE>vc <Cmd>PlugClean<CR>
nnoremap <SPACE>vu <Cmd>PlugUpdate<CR>

" 2. auto-pairs.vim
let g:AutoPairsFlyMode = 0

" 3. autoformat
autocmd! BufWrite *.c,*.h :Autoformat

" 4. openbrower.vim
nnoremap <SPACE>bu :OpenBrowser<SPACE>https://
nnoremap <SPACE>bs :OpenBrowserSmartSearch<SPACE>

" 5. calendar.vim
noremap <silent> <SPACE>at <cmd>Calendar -position=here<CR>

" 7. suda.vim
nnoremap <SPACE>fE :SudaRead<CR>
nnoremap <SPACE>fw :SudaWrite<CR>

" 8. markdown-toc.vim
nnoremap <space>fmit :GenTocMarked<CR>

" 10. bullets.vim
let g:bullets_enabled_file_types = [
			\ 'markdown',
      \ ]

" 11. markdown-preview.vim
nnoremap <space>fmm :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [
      \ 'markdown',
      \ 'html',
      \ 'css'
      \ ]

" 12. bookmark
"highlight BookmarkSign ctermbg=NONE ctermfg=160
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

" 15. toggleterm
nnoremap <SPACE>tt <Cmd>ToggleTerm<CR>

" 16. sniprun
noremap <SPACE>ll <Cmd>SnipRun<CR>
noremap <SPACE>lc <Cmd>SnipClose<CR>

" 17. hop.nvim
lua << EOF
require'hop'.setup()
EOF
" mappings
nnoremap <SPACE>jj <Cmd>HopWord<CR>
nnoremap <SPACE>jl <Cmd>HopLine<CR>

" 18. highlight yank

" 19. surround.nvim
lua << EOF
require"surround".setup{}
EOF

" 20. indent line

" 21. tabmodetoggle
" autocmd FileType markdown TableModeToggle

" 22. lua-dev
lua << EOF

local luadev = require("lua-dev").setup({
  lspconfig = {
    cmd = {"lua-language-server"}
  },
})

local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup(luadev)

EOF

" 24. trouble.vim
lua << EOF
  require("trouble").setup {}
EOF

" 25. notify
lua << EOF
vim.notify = require("notify")
vim.notify.setup({
  stages = "slide",
  timeout = 1000,
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
      \ {'title': 'nvim-config', 'timeout': 1000, 'stages': 'slide'})<cr>
