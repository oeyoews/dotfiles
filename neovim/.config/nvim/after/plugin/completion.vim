if !exists('g:loaded_completion') | finish | endif

set completeopt=menuone,noinsert,noselect

imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

lua <<EOF
-- lang#c:
require'lspconfig'.clangd.setup{
  on_attach=require'completion'.on_attach }
-- lang#vim: npm install -g vim-language-server
require'lspconfig'.vimls.setup{
  on_attach=require'completion'.on_attach }
EOF

let g:completion_enable_snippet = 'UltiSnips'
let g:completion_confirm_key = "\<CR>"
let g:completion_matching_strategy_list = ['exact', 'substring']
let g:completion_matching_ignore_case = 0
let g:completion_matching_smart_case = 1
let g:completion_trigger_character = ['.', '::']
let g:completion_trigger_keyword_length = 2 " default = 1
let g:completion_trigger_on_delete = 1
let g:completion_timer_cycle = 200
let g:completion_chain_complete_list = {
      \ 'default' : {
        \   'default': [
          \       {'complete_items': ['lsp', 'snippet', 'path']},
          \       {'mode': '<c-p>'},
          \       {'mode': '<c-n>'}],
          \   'comment': []
          \ }
          \}
