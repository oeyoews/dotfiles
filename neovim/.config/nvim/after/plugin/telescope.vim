if !exists('g:loaded_telescope') | finish | endif

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
defaults = {
  mappings = {
    n = { ["q"] = actions.close },
    },
  layout_config = {
    vertical = { width = 0.5 } -- other layout configuration here
    },
  pickers = {
    find_files = {
      theme = "dropdown",
      }
    },
  }
}
EOF

" mappings 
nnoremap <space>tc <cmd>Telescope colorscheme<cr>
