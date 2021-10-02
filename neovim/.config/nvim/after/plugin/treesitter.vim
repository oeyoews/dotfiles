if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua << EOF


local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main"
    },
}

require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_current_scope = { enable =false},
    },

  refactor = {
    highlight_definitions = { enable = false},
    },

  rainbow = {
  enable = false,
  extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
  max_file_lines = 1000,
  },

  ensure_installed = {
    "html",
    "norg", -- must in local after
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

  -- todo
  highlight = {
  enable = true,
  disable = {}
  },

 incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}


EOF
