" bootstrap_before 将在读取用户配置后执行
" bootstrap_after 将在 VimEnter autocmd 之后执行
" https://yianwillis.github.io/vimcdoc/doc/autocmd.html

" ===
" === before
" ===
function! myspacevim#before() abort

  " ===
  " === tmp settings
  " ===
  " vim-surround: https://gist.github.com/oeyoews/4c8eb99f9df1c4c756a413c3d8a09a6c
  " noremap tx :r !figlet
  " noremap th :%TOhtml
  " noremap <space>; :
  " noremap <space>/ /
  " nnoremap <leader>w :w<CR>

  let g:smoothie_enabled=0  " disable vim-smoothie

  let g:spacevim_filetype_icons['toml'] = ''

  " ===
  " === vim_instant_markdown
  " ===
  let g:instant_markdown_autoscroll = 1
  let g:instant_markdown_slow = 0
  let g:instant_markdown_autostart = 1
  "let g:instant_markdown_port = 8888

  " ===
  " === rainbow
  " ===
  let g:rainbow_active = 1

  " 开启保存 undo 历史功能
  set undofile
  " undo 历史保存路径
  " need mkdir it by hand
  set undodir=~/.undo_history/
  " eg: set nu?
  set updatetime=100
  set nofoldenable
  set so=0

  " show right command
  set showcmd

  " set list! set nolist
  "
  " show tab symbols
  " set list

  " vanilla quit
  set confirm

  " set expandtab
  " set noexpandtab
  " :retab!
  set number relativenumber
  set completeopt=longest,menu
  set ignorecase

  " options: number yes
  set signcolumn=yes

  let g:mapleader = ','

  " ===
  " === GitGutter
  " ===
  " fix in before for GitGutter
  let g:gitgutter_sign_allow_clobber = 0
  let g:gitgutter_map_keys = 0
  let g:gitgutter_override_sign_column_highlight = 1
  let g:gitgutter_preview_win_floating = 1
  let g:gitgutter_sign_added = '▎'
  let g:gitgutter_sign_modified = '░'
  let g:gitgutter_sign_removed = '▏'
  let g:gitgutter_sign_removed_first_line = '▔'
  let g:gitgutter_sign_modified_removed = '▒'
  nnoremap <LEADER>gf :GitGutterFold<CR>
  nnoremap H :GitGutterPreviewHunk<CR>
  nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
  nnoremap <LEADER>g= :GitGutterNextHunk<CR>

endfunction


" ===
" === After
" ===
function! myspacevim#after() abort

  " ===
  " === nerdtree
  " ===
  let g:NERDTreeDirArrowExpandable = '➤'
  let g:NERDTreeDirArrowCollapsible = '✏️'

  " ===
  " === misc settings
  " ===
  set sidescroll=1
  set nobackup
  set noswapfile
  set clipboard^=unnamed
  set guifont=Droid\ Sans\ Mono\ 14
  nnoremap <leader>qq :q!<CR>
  set nowrap  " must in after

  " ===
  " === coc.nvim
  " ===
  " when use npm tao, not to use proxy
  " Coclist services
  nnoremap <silent> <space>ce :<C-u>CocList --normal extensions<CR>
  nnoremap <silent> <space>cm :<C-u>CocList --normal marketplace<CR>
  nnoremap <silent> <space>cc :<C-u>CocConfig<CR>
  nnoremap <silent><nowait> <space>cd  :<C-u>CocList diagnostics<cr>
  nmap <space>crn <Plug>(coc-rename)
  nmap <silent> gr <Plug>(coc-references)
  " default is enable for gd  nmap <silent> gd <Plug>(coc-definition)
  nmap <space>cqf  <Plug>(coc-fix-current)
  " print variable: echo coc_global_extensions
  " coc-git
  "https://github.com/neoclide/coc-sources#readme
  let g:coc_global_extensions = [
        \ 'coc-yank',
        \ 'coc-json',
        \ 'coc-emoji',
        \ 'coc-highlight',
        \ 'coc-snippets',
        \ 'coc-vimlsp',
        \ 'coc-yaml',
        \ 'coc-syntax',
        \ 'coc-translator',
        \ 'coc-clangd',
        \ 'coc-lists']
  " tab and shift + tab
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  inoremap <silent><expr> <c-@> coc#refresh()

  " ===
  " === coc-translator
  " ===
  " popup
  nmap <Leader>tw <Plug>(coc-translator-p)
  " in minbuffer
  nmap <Leader>e <Plug>(coc-translator-e)

  " ===
  " === markdown-preview.nvim
  " ===
  nnoremap <space>fm :MarkdownPreviewToggle<CR>

endfunction
