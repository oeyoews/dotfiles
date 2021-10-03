" order is important, this statement should be set header
" keep this terminal is transparent
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" transparent bg" order is very important for it
" Example config in VimScript
" day night storm
let g:tokyonight_style = "storm"  
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" colorscheme tokyonight
colorscheme zephyr
" hi Normal ctermfg=252 ctermbg=none
" set background=dark

" cursor color
if has("autocmd")
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
hi Cursor guifg=#86af5d guibg=#86af5d
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" highlight yank
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}
let g:rainbow_active = 1
