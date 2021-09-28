nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger="\<CR>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/ultisnips/',
			\ $HOME.'/.cache/nvim/plug/vim-snippets/UltiSnips/',
      \ ]
let g:UltiSnipsEditSplit="vertical"
" TODO: select mode
let g:UltiSnipsRemoveSelectModeMappings = 1

