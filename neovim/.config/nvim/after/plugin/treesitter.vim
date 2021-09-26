if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "html",
    "lua",
    "c",
    "json",
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
    enable = true,
    disable = { }
    },
}
EOF
