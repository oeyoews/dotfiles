if !exists('g:lspconfig')
  finish
endif

lua <<EOF

local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
local nvim_lsp = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')

-- LSP settings

local border = {
      {"🭽", "FloatBorder"},
      {"▔", "FloatBorder"},
      {"🭾", "FloatBorder"},
      {"▕", "FloatBorder"},
      {"🭿", "FloatBorder"},
      {"▁", "FloatBorder"},
      {"🭼", "FloatBorder"},
      {"▏", "FloatBorder"},
}

local on_attach = function(client, bufnr)
  vim.lsp.handlers["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border})
  vim.lsp.handlers["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border})
end

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Enable completion triggered by <c-x><c-o>
buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- cmp_lsp
local cmp = require('cmp')

cmp.setup({
snippet = {
  expand = function(args)
  vim.fn["UltiSnips#Anon"](args.body)
end,
},

-- cmp_menu
completion = {
  completeopt = 'menu,menuone,noinsert,noselect',
  },

-- mappings
mapping = {
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }), -- switch item
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }), -- switch item
  ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true, }),  -- confirm complete
  ['<C-e>'] = cmp.mapping.complete(), -- complete
  ['<C-c>'] = cmp.mapping.close(), -- close complete
  },

-- config LSP UI menu
  formatting = {
    format = require("lspkind").cmp_format({with_text = true, menu = ({
    buffer = "[BUF]",
    nvim_lsp = "[LSP]",
    nvim_lua = "[LUA]",
    ultisnips = "[USN]",
    neorg = "[ORG]",
    })}),
  },

-- add complete sources
sources = {
  { name = 'nvim_lsp' },
  { name = 'nvim_lua' },
  { name = 'ultisnips' },
  { name = 'buffer' },
  { name = 'emoji' },
  { name = 'path' },
  { name = 'neorg' }
  }
    })

  -- automatically connect language server protocol
  local servers = { 'vimls', 'clangd', 'bashls', 'pyright', 'sumneko_lua' }

  local capabilities = vim.lsp.protocol.make_client_capabilities()

  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      capabilities = capabilities,
      }
  end

  -- add icon for virtual error
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
    signs = true,
    underline = true,
    virtual_text = { spacing = 0, prefix = '' }
    })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, { border = "single" })

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, { border = "rounded", focusable = false })

  -- highlight border
vim.cmd [[autocmd ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

EOF

" disable cmp for telescope
autocmd FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }

" ===
" === ultisnips
" ===
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

nnoremap <leader>lsp <cmd>LspStop<cr> 
nnoremap <leader>lss <cmd>LspStart<cr> 

" by lspconfig
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
