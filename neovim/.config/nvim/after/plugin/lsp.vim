if !exists('g:lspconfig')
  finish
endif

lua <<EOF
local cmp = require('cmp')
local nvim_lsp = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')

cmp.register_source('look', require('cmp_look').new())

cmp.setup({
snippet = {
  expand = function(args)
  vim.fn["UltiSnips#Anon"](args.body)
end,
},

completion = {
  completeopt = 'menu,menuone,noinsert,noselect',
  },

mapping = {
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }), -- switch item
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }), -- switch item
  ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true, }),  -- confirm complete
  ['<C-e>'] = cmp.mapping.complete(), -- complete
  ['<C-c>'] = cmp.mapping.close(), -- close complete
  -- ['<C-c>'] = cmp.mapping.abort(), --abort
  },

formatting = {
  format = function(entry, vim_item)

  vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

  vim_item.menu = ({
  nvim_lsp = "[LSP]",
  ultisnips = "[Usnip]",
  buffer = "[Buf]",
  look = "[Dic]",
  neorg = "[Neorg]",
  })[entry.source.name]
return vim_item
end,
},

sources = {
  { name = 'nvim_lsp' },
  { name = 'ultisnips' },
  { name = 'buffer' },
  { name = 'emoji' },
  { name = "latex_symbols" },
  { name = 'path' },
  { name = 'look' },
  { name = 'neorg' }
  }

    })

  -- Setup lspconfig.
  nvim_lsp.clangd.setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

  nvim_lsp.bashls.setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

  nvim_lsp.vimls.setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

  nvim_lsp.pyright.setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = {
      spacing = 4,
      prefix = ''
      }
    }
  )

EOF

" disable cmp for telescope
autocmd FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }

" ultisnips
nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>G
nnoremap <silent> <SPACE>ea :UltiSnipsEdit all<CR>

let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/Ultisnips/',
			\ $HOME.'/.cache/nvim/plug/vim-snippets/UltiSnips/',
      \ ]
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsRemoveSelectModeMappings = 1
