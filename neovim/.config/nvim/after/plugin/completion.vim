if !exists('g:loaded_completion') | finish | endif

set completeopt=menu,menuone,noinsert,noselect

autocmd BufEnter * lua require'completion'.on_attach()

lua <<EOF

-- lang#c: yay clang
require'lspconfig'.clangd.setup{
on_attach=require'completion'.on_attach }

-- lang#vim: npm install -g vim-language-server
require'lspconfig'.vimls.setup{
on_attach=require'completion'.on_attach }

-- lang#python: yay pyright
require'lspconfig'.pyright.setup{
on_attach=require'completion'.on_attach }

EOF

let g:completion_enable_snippet = 'UltiSnips'
let g:completion_confirm_key = "\<CR>"
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy',]
let g:completion_matching_ignore_case = 0
let g:completion_sorting = "length"
let g:completion_matching_smart_case = 1
let g:completion_trigger_character = []
let g:completion_trigger_keyword_length = 3
let g:completion_trigger_on_delete = 2
let g:completion_timer_cycle = 300
let g:completion_chain_complete_list = {
      \ 'default' : {
        \   'default': [
          \       {'complete_items': ['lsp', 'snippet', 'buffers']},
          \       {'mode': '<c-p>'},
          \       {'mode': '<c-n>'}],
          \   'comment': []
          \ }
          \}

" mappings
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
