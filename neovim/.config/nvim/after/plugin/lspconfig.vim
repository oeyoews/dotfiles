if !exists('g:lspconfig')
  finish
endif

lua << EOF

-- print error in status line(error)
function PrintDiagnostics(opts, bufnr, line_nr, client_id)
  opts = opts or {}

  bufnr = bufnr or 0
  line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)

  local line_diagnostics = vim.lsp.diagnostic.get_line_diagnostics(bufnr, line_nr, opts, client_id)
  if vim.tbl_isempty(line_diagnostics) then return end

  local diagnostic_message = ""
  for i, diagnostic in ipairs(line_diagnostics) do
    diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
    print(diagnostic_message)
    if i ~= #line_diagnostics then
      diagnostic_message = diagnostic_message .. "\n"
    end
  end
  vim.api.nvim_echo({{diagnostic_message, "Normal"}}, false, {})
end

vim.cmd [[ autocmd CursorHold * lua PrintDiagnostics() ]]

-- tips
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- popup error tips icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  -- This sets the spacing and the prefix, obviously.
  virtual_text = {
    spacing = 2,
    prefix = ''
    }
  }
)

-- icon for completion
require "vim.lsp.protocol".CompletionItemKind = {
  "  (text)",
  "  (method)",
  "  (fun)",
  "  (constructor)",
  "ﰠ  (field)",
  " (var)",
  -- ﴯ
  "🅒  (class)",
  "  (interface)",
  -- "📦
  " (module)",
  "ﰠ  (property)",
  "塞 (unit)",
  "  (value)",
  "  (enum)",
  "  (keyword)",
  "  (snippet)",
  "  (color)",
  "  (file)",
  "  (reference)",
  "  (folder)",
  "  (enum-member)",
  "  (constant)",
  "פּ  (struct)",
  "  (event)",
  "  (operator)",
  --"🅒  (UltiSnips),
  "   (type-param)"
}

EOF

" local symbols = {
"   -- Class = '🅒',
"   Class = '∴',
"   -- Color = '☀',
"   -- Color = '⛭',
"   Color = '🖌',
"   -- Constant = 'π',
"   Constant = '𝜋',
"   Constructor = '⬡',
"   -- Constructor = '⌬',
"   -- Constructor = '⎔',
"   -- Constructor = '⚙',
"   -- Constructor = 'ᲃ',
"   Enum = '',
"   EnumMember = '',
"   Event = '',
"   -- Field = '→',
"   -- Field = '∴',
"   Field = '🠶',
"   File = '',
"   Folder = '',
"   Function = 'ƒ',
"   -- Function = 'λ',
"   Interface = '',
"   Keyword = '🗝',
"   Method = '𝘮',
"   -- Method = 'λ',
"   Module = '📦',
"   Operator = '≠',
"   -- Operator = '±',
"   -- Property = '::',
"   Property = '∷',
"   -- Reference = '⌦',
"   Reference = '⊷',
"   -- Reference = '⊶',
"   -- Reference = '⊸',
"   -- Snippet = '',
"   -- Snippet = '↲',
"   -- Snippet = '♢',
"   -- Snippet = '<>',
"   Snippet = '{}',
"   Struct = '',
"   Text = '#',
"   -- Text = '♯',
"   -- Text = 'ⅵ',
"   -- Text = "¶",
"   -- Text = "𝒯",
"   -- Text = "𝓣",
"   -- Text = "𐄗",
"   TypeParameter = '×',
"   Unit = '()',
"   -- Value           =
"   -- Variable = '𝛼',
"   -- Variable = 'χ',
"   Variable = '𝓧',
"   -- Variable = '𝛸',
"   -- Variable = 'α',
"   -- Variable = '≔',
" }
" -- other symbols that might be useful for something: -- ⊕ † ፨ ᯾ ⁂ ∎ ∹ ☖ ⚐ 🕮 🗈 🗉 🗈 🗉 ⬠  ⬡  ⮺  ⮻ ⯐  ⯒ ⟡ ✐  ✎ ꒾꙳ ꥟ ⤙ ⤚ ⤛ ⤜
"

