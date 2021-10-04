let g:startify_padding_left = 3
let g:startify_enable_special = 1
let g:startify_custom_indices = [ 'f', 'g']
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['       Recent Files:']            },
      \ { 'type': 'dir',       'header': ['       Recent Projects: '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['       Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['       Bookmarks']      },
      \ { 'type': 'commands',  'header': ['       Commands']       },
      \ ]
let g:startify_bookmarks = [
      \ { 'v': '~/.config/nvim/init.vim' },
      \ ]
let g:startify_custom_header =
            \ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')

let g:startify_relative_path = 1
let g:startify_use_env = 1
let g:startify_custom_footer =
      \ ['', "  Nvim is a awesome.", '']

let g:startify_center = 40

" show cursorline in startify
" autocmd User Startified setlocal cursorline

" cmd
command! Time StartupTime
