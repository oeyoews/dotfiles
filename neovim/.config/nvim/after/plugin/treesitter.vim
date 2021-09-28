if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua << EOF

require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_current_scope = { enable =false},
    },

  refactor = {
    highlight_definitions = { enable = true },
    },

  rainbow = {
  enable = true,
  extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
  max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  },

  ensure_installed = {
    "html",
    "lua",
    "c",
    "json",
    "query",
    "bash",
    "yaml",
    "vim",
    "toml",
    "css",
    "comment",
    "cmake",
    "python",
    },

  highlight = {
  enable = true, disable = { }
  },
}


EOF
