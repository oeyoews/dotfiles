if !exists('g:lspconfig')
  finish
endif

lua <<EOF
local cmp = require('cmp')
local nvim_lsp = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')

cmp.setup({
snippet = {
  expand = function(args)
  vim.fn["UltiSnips#Anon"](args.body)
end,
},

mapping = {
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }), -- next item
  ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- confirm complete
  ['<C-e>'] = cmp.mapping.close(), -- close complete
  },

formatting = {
  format = function(entry, vim_item)

  vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

  vim_item.menu = ({
  buffer = "[Buffer]",
  nvim_lsp = "[LSP]",
  nvim_lua = "[Lua]",
  latex_symbols = "[Latex]",
  })[entry.source.name]
return vim_item
end,
},

    sources = {
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'emoji' },
      { name = 'buffer' },
      { name = 'ultisnips' },
      { name = "latex_symbols" },
      { name = 'neorg' }
      }

    })

  -- Setup lspconfig.
  -- todo
  nvim_lsp.clangd.setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

  nvim_lsp.bashls.setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

  nvim_lsp.vimls.setup {
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

autocmd FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }

" ultisnips
nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>G
nnoremap <silent> <SPACE>ea :UltiSnipsEdit all<CR>

let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/Ultisnips/',
			\ $HOME.'/.cache/nvim/plug/vim-snippets/UltiSnips/',
      \ ]
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsRemoveSelectModeMappings = 1
