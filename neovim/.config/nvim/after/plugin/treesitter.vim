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
    "yaml",
    "vim",
    "bash",
    "toml",
    "css",
    "cmake",
    "python",
  },
  highlight = {
    enable = true,
    disable = { "vim", "md"}
  },
}
EOF
