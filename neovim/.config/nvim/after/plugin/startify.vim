let g:startify_padding_left = 3
let g:startify_enable_special = 1
let g:startify_custom_indices = [ 'f' ]
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['       Recent Files:']            },
      \ { 'type': 'dir',       'header': ['       Recent Projects: '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['       Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['       Bookmarks']      },
      \ { 'type': 'commands',  'header': ['       Commands']       },
      \ ]
let g:startify_commands = [
      \ {'h': ':help'},
      \ ]
let g:startify_bookmarks = [
      \ { 'v': '~/.config/nvim/init.vim' },
      \ { 't': '/tmp' }
      \ ]

" mappings
nnoremap <silent> <SPACE>bh :Startify<CR>

let g:startify_custom_header =
            \ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')

" let g:startify_custom_header = 'startify#center(startify#fortune#boxed())'

let g:startify_relative_path = 1
let g:startify_use_env = 1
autocmd User Startified setlocal cursorline

let g:startify_custom_footer =
      \ ['', "   Vim is charityware. Please read ':help uganda'.", '']
