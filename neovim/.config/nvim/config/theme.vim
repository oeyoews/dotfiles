" order is important, this statement should be set header
" keep this terminal is transparent
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" transparent bg" order is very important for it
" Example config in VimScript

" ===
" === colorscheme
" ===
" spacevim deus gruvbox
colorscheme deus

" ===
" === cursor color
" ===
if has("autocmd")
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
hi Cursor guifg=#86af5d guibg=#86af5d
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" ===
" === highlight yank
" ===
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}

" ===
" === transparent
" ===
" if in the first line header should add autocmd ...
" if after colorscheme , not to addd autocmd 
highlight Normal guibg=NONE ctermbg=NONE
