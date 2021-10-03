" command Sc redir @">|silent scriptnames|redir END|enew|put
command! Scripts enew|pu=execute('scriptnames') 

" smart quit
" TODO
autocmd! FileType help,qf,startuptime,quickrun,snippets nnoremap <silent> q <Cmd>q<CR>
" autocmd FileType markdown colorscheme zephyr

" fix latex filetype
autocmd BufRead,BufNewFile *.tex set filetype=tex

" fix formatoptions- order bug
" doesn't work , still because this order
" autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
