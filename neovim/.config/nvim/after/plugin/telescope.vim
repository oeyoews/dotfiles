if !exists('g:loaded_telescope') | finish | endif

nnoremap <SPACE>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <SPACE>bb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <SPACE>hh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <SPACE>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
