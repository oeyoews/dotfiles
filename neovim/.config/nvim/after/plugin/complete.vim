if !exists('g:lspconfig')
  finish
endif

lua <<EOF

local cmp = require('cmp')
local nvim_lsp = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- NOTE: for /tmp folder, if your file in this folder, 
--      it's will be cause failed because of permission(sumneko_lua)
-- TODO: how to config lua server cmd execute for lspconfig by manual
local servers = { 'vimls', 'clangd', 'bashls', 'pyright', 'sumneko_lua' }

-- :lua vim.cmd('e'..vim.lsp.get_log_path())
-- to show lsp.log in your new buffer path: ~/.cache/nvim/lsp.log

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

-- config LSP UI menu
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

-- add complete sources
sources = {
  { name = 'nvim_lsp' },
  { name = 'nvim_lua' },
  { name = 'ultisnips' },
  { name = 'look' },
  { name = 'buffer' },
  { name = 'emoji' },
  { name = "latex_symbols" },
  { name = 'path' },
  { name = 'neorg' }
  }
    })

  -- automatically connect language server protocol
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      capabilities = capabilities,
      }
  end

  -- add icon for virtual error
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
" jump in place holder
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
" add path for snips
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/Ultisnips/',
			\ $HOME.'/.cache/nvim/plug/vim-snippets/UltiSnips/',
      \ ]
" fast edit self snips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsRemoveSelectModeMappings = 1

" mappings
nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>G
nnoremap <silent> <SPACE>ea :UltiSnipsEdit all<CR>
