local which_configs = require("which-key")

which_configs.setup {

  plugins = {
    marks = false, -- shows a list of your marks on ' and `
    registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false,  -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = false, -- default bindings on <c-w>
      nav = false, -- misc bindings to work with windows
      z = false, -- bindings for folds, spelling and others prefixed with z
      g = false, -- bindings for prefixed with g
    },
  },

  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center"  -- align columns left, center or right
  },

  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
  },

  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },

  key_labels = {
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
  },

  show_help = false, -- more silent in minimal buffer
  ignore_missing = false, -- not modify it
}

-- TODO for Telescope
which_configs.register({

  f = { name = "+file" },
  ff = { "<cmd>Telescope find_files theme=dropdown prompt_prefix=🔍<cr>", "Find File" },
  fr = { "<cmd>Telescope oldfiles theme=dropdown prompt_prefix=🔍<cr>", "Open Recent File" },

  b = { name = "+buffer" },
  -- bn = { "<cmd>enew<cr>", "New File" },
  bb = { "<cmd>Telescope buffers theme=dropdown <prompt_prefix=🔍<cr>", "Buffers" },

  w = { name = "+winnow" },

  l = { name = "+lang" },

  t = { name = "+toggle" },

}, { prefix = "<space>" })
