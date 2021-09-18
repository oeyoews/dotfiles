" bootstrap_before 将在读取用户配置后执行
" bootstrap_after 将在 VimEnter autocmd 之后执行
"
" tutorial 
"   https://yianwillis.github.io/vimcdoc/doc/autocmd.html
"   https://harttle.land/2017/01/30/variables-in-vim.html
"   https://www.kancloud.cn/kancloud/learn-vimscript-the-hard-way/49323
"   https://learnvimscriptthehardway.stevelosh.com/
"   https://vimjc.com/
"   https://www.w3xue.com/soft/vim/vim-links.html
"   https://blog.csdn.net/smstong/article/details/20775695

" === Before
" ===
function! myspacevim#before() abort

  " ===
  " === some tips
  " ===
  " set filetype?
  " set filetype=....
  " au BufNewFile,BufRead *.pn set filetype=potion
  " m{a-z} mark `{a-zA-Z} jump mark
  " redraw minbuffer: Ctrl l
  " show filename: Ctrl g
  " vim -u *.vim
  " :smile
  " ex mode: Q
  " -D debug
  "  :Tagbar :TagbarOpen
  "  :Explore R
  "  nerdtree m
  " vanilla: vim -u NONE
  " split: st
  " , q r == q
  " :h spacevim
  " :echo g:spacevim_<options>
  " :echo spacevim_<options>
  " C-w C-o or :only maxwindow
  " :hide
  " :runtimepath
  " :com[mand]  # list all user-commands
  " :comclear  # clear all user-commands
  " ~/.vim/autoload/SpaceVim/custom.vim to config extra dir as default config
  " like vimrc
  " let mapleader or echo mapleader # show leader 

  " ===
  " === misc settings
  " ===
  " NOTE: must in before
  let g:mapleader = ','
  " let g:maplocalleader ='\'
  set number relativenumber " must before startify
  set nofoldenable " disable automatical fold code, you can fold code by hand must in before
  nnoremap <C-A> ggVG

  " ===
  " === rainbow
  " ===
  " NOTE: must in before
  let g:rainbow_active = 0 " if set 1, it's conflicts to nerdtree
  nnoremap <space>tr :RainbowToggle<CR>:echom "enable rainbow_bract!"<CR>

  " ===
  " === custom plugins
  " ===
  " muset in before
  let g:spacevim_custom_plugins = [
        \ ['luochen1990/rainbow'],
        \ ['plasticboy/vim-markdown'],
        \ ['justinmk/vim-syntax-extra'],
        \ ['yianwillis/vimcdoc'],
        \ ['ap/vim-css-color'],
        \ ['ntpeters/vim-better-whitespace'],
        \ ['iamcco/markdown-preview.nvim'],
        \ ['tpope/vim-capslock'],
        \ ['tiagofumo/vim-nerdtree-syntax-highlight'],
        \ ['ryanoasis/vim-devicons'],
        \ ]

endfunction
" }}}

" === After 
" ===
function! myspacevim#after() abort

  " ===
  " === all nerdtree
  " ===
  "
  let g:NERDTreeDirArrowExpandable = '➤' 
  let g:NERDTreeDirArrowCollapsible = ''
  let g:NERDTreeShowHidden=0 " let g:NERDTreeMapCustomOpen = '<TAB>' " doesn't work
  autocmd FileType nerdtree nmap <Tab> <CR>
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1
  let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
  let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
  let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
  let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
  let g:NERDTreeExtensionHighlightColor = {} "this line is needed to avoid error
  let g:NERDTreeExtensionHighlightColor['yml'] = '' "assigning it to an empty string will skip highlight
  let g:NERDTreeLimitedSyntax = 1
  let g:NERDTreeHighlightCursorline = 0

  " ===
  " === command mode
  " ===
  " space h space == :h spacevim and use tab to switch next item
  noremap <space>hh :h<space>
  noremap <space>hc :
  nnoremap <SPACE>he :echo<SPACE>

  " ===
  " === misc settings
  " ===
  "
  set sidescroll=1
  set nobackup
  set noswapfile
  set clipboard^=unnamed
  set guifont=Droid\ Sans\ Mono\ 14 " echo &guifont
  let &wrap = 0 " set nowrap   must in after
  set mouse+=a
  set shortmess+=a

  nnoremap <silent> <leader>qq :q!<CR>
  noremap <space>su :SPUpdate<CR>
  noremap L $
  set smartcase
  set scrolloff=0
  set confirm " better quit
  set signcolumn=yes " options: number yes
  set ignorecase
  let g:smoothie_enabled=0  " disable vim-smoothie
  let g:spacevim_filetype_icons['toml'] = ''
  set updatetime=100
  set foldmethod=marker
  let $_MYVIMRC = "~/.SpaceVim.d/autoload/myspacevim.vim"
  nnoremap <SPACE>fvp :tabnew $_MYVIMRC<CR>:echom "Open _MYVIMRC!"<CR> 
  nnoremap <SPACE>fvP :source $_MYVIMRC<CR>:echom "Refresh finished!"<ESC> 
  nnoremap <silent> <SPACE>ff :Leaderf file --popup<CR>
  nnoremap <silent> <SPACE>a; mqA;<ESC>`q :echom "Add a Comma in the end!"<CR>
  nnoremap <silent> <SPACE>a, mqA,<ESC>`q :echom "Add a comma in the end!"<CR>

  " ===
  " === markdown maps
  " ===
  " insert markdown code TODO: snippets
  autocmd FileType markdown nnoremap <SPACE>imc i```<ESC>yypO<ESC>kA
  " blod NOTE: the cursor must in word
  autocmd FileType markdown nnoremap <SPACE>imb bi**<ESC>wwa**<ESC>

  " augroup
  " augroup _myautocmd
    " autocmd!
    " autocmd FileType c :iabbrev <buffer> inc #include <stdio.h><ESC><CR><left>
    " NOTE: can't have whitespace in regrep express
    " autocmd BufWritePre,BufRead *.vim,*.c,*.h  :normal ==$ " in save file, " it something wrong
    " autocmd BufWritePost $_MYVIMRC source $_MYVIMRC " doesn't work
  " augroup END
  "
  " must comment next line, because of double quote error
  " let @a = "hello!"  # "ap for register, or echo @a @" == unnamed register
  " print absolute path for filename
  " command! Pwd echom expand('%:p')

  " ===
  " === markdown-preview.nvim
  " ===
  " autocmd FileType markdown if open it directly, can't use this command TODO
  nnoremap <space>fmm :MarkdownPreviewToggle<CR> 
  let g:mkdp_echo_preview_url = 1
  let g:mkdp_open_to_the_world = 0
  " let g:mkdp_command_for_global = 0 " some bug
  " let g:mkdp_filetypes  = ['md'] " some bug

  " ===
  " === vim-markdown-toc
  " ===
  autocmd FileType markdown nnoremap <space>imt :GenTocMarked<CR>

  " ===
  " === calendar.vim
  " ===
  nnoremap <silent> <space>at :<C-U>Calendar -view=clock<CR>

  " ===
  " === vim-better_whitespace.vim
  " ===
  let g:better_whitespace_enabled=1
  let g:strip_whitespace_on_save=1

  " ===
  " === coc.nvim
  " ===
  " quickly fix error
  nnoremap <leader>qf  <Plug>(coc-fix-current) 
  nnoremap <silent> <SPACE>ce :CocList extensions<CR> 
  " trigger completion.
  inoremap <silent><expr> <c-@> coc#refresh()
  nnoremap <silent> <SPACE>cc :CocConfig<CR>
  let g:coc_global_extensions = [
        \ 'coc-emoji',
        \ 'coc-json',
        \ 'coc-yank',
        \ 'coc-clangd',
        \ 'coc-snippets',
        \ 'coc-browser']

" ===
" === vim-markdown
" ===
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal_code_blocks = 1  " disable hiden code-blocks
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_follow_anchor = 1  " jump: ge
" gx like gopen for [demo](http)
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_edit_url_in = 'tab'

" ===
" === open-browser.vim
" ===
nnoremap <SPACE>bou :OpenBrowser<SPACE>https://
nnoremap <SPACE>bos :OpenBrowserSmartSearch<SPACE>

" ===
" === coc-snippets
" ===
" like space to complete 
imap <C-k> <Plug>(coc-snippets-expand) 

" <CR> to completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" tab is cycle
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" placeholder switch
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

endfunction
