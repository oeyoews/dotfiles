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
lua require'hop'.setup()
" mappings
nnoremap <SPACE>jj <Cmd>HopWord<CR>
nnoremap <SPACE>jl <Cmd>HopLine<CR>

" 19. surround.nvim
lua require"surround".setup{}

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
      \ {'title': 'nvim-config', 'timeout': 3000, 'stages': 'slide'})<cr>

" ===
" === beacon
" ===
" for nvimtree, have some bug for second open
" highlight Beacon guibg=red ctermbg=45
" let g:beacon_ignore_buffers = [ '*tree' ]
" let g:beacon_minimal_jump = 10
" let g:beacon_show_jumps = 0
let g:beacon_size = 40
let g:beacon_ignore_filetypes = [
      \ 'startify',
      \]
" mappings
nnoremap n n:Beacon<cr>
nnoremap N N:Beacon<cr>
nnoremap * *:Beacon<cr>
nnoremap # #:Beacon<cr>

" ===
" === nvim-lspinstall
" ===
" this language-server-protocal site path is ~/.local/share/nvim/lspinstall/...

command! Time StartupTime

" ===
" === nvimtree
" ===
lua <<EOF
require'nvim-tree'.setup {
  view = {
    side = 'right',
    auto_resize = true,
    },
  update_to_buf_dir   = {
  enable = true,
  auto_open = true,
  },
update_cwd = true,
auto_close = true, -- close this nvimtree, if the nvimtree is lastwindow
lsp_diagnostics = false,
update_focused_file = {
    enable      = true,
    update_cwd  = true,
  },  -- jump this file for cursor
}
EOF
" jump empty folder
let g:nvim_tree_group_empty = 1
" make folder is color
let g:nvim_tree_highlight_opened_files = 1
" let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_respect_buf_cwd = 1
" show indent line
let g:nvim_tree_indent_markers = 0 
" add slash in folder
let g:nvim_tree_add_trailing = 0 
let g:nvim_tree_icon_padding = ' '
" open a file, to close this nvimtree
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_refresh_wait = 500
" show arrows
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folder_arrows': 1,
    \ 'files': 1,
    \ 'folders': 1,  
    \ }

nnoremap <leader>ft <cmd>NvimTreeToggle<cr> 
