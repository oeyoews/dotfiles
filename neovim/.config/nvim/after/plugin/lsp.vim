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
  -- For `ultisnips` user.
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

  -- set a name for each source
  vim_item.menu = ({
  buffer = "[Buffer]",
  nvim_lsp = "[LSP]",
  -- luasnip = "[LuaSnip]",
  nvim_lua = "[Lua]",
  latex_symbols = "[Latex]",
  })[entry.source.name]
return vim_item
end,
},

    sources = {
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'look' },
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

  nvim_lsp.sumneko_lua.setup {
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

" " Use <Tab> and <S-Tab> to navigate through popup menu
" " must in this file
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" mappings
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
