let g:vimpad_prefix = '🧨'
" number of spaces to add in front of output
  let g:vimpad_add_space = 1
" number of spaces around the output
  let g:vimpad_add_padding = 1
highlight VimpadOutput guifg=#11f0c3 guibg=#ff00ff

" make sure to set the style to custom!
let g:vimpad_style = 'custom'
let g:vimpad_suffix= "\uE0B2"
highlight VimpadPrefix guifg=bg guibg=Cyan gui=reverse
highlight VimpadSuffix guifg=bg guibg=Cyan

" make sure to set the style to custom!
let g:vimpad_style_error = 'custom'
let g:vimpad_prefix_error = "\uE0B2"
let g:vimpad_suffix_error = "\uE0B2"
highlight VimpadOutputError guifg=bg guibg=Red
highlight VimpadPrefixError guifg=bg guibg=Red gui=reverse
highlight VimpadSuffixError guifg=bg guibg=Red

" mappings
nmap <leader>lv <Plug>(vimpad-toggle)
