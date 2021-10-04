" lualine
lua << EOF
--[[
require'lualine'.setup {
  options = {fmt = string.lower},
  theme = tokyonight,
  sections = {lualine_a = {
    {'mode', fmt = function(str) return str:sub(1,1) end}},
    lualine_b = {'branch'},
    }
  }
--]]
EOF

" ===
" === lightline
" ===
" let g:lightline = {
"       \ 'colorscheme': 'tokyonight',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'readonly', 'filename' ] ],
"       \ },
"       \ 'component_function': {
"       \   'filename': 'LightlineFilename',
"       \  ' gitbranch ' : ' Gitsigns ',
"       \ },
"       \ }
"
" function! LightlineFilename()
"   let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
"   let modified = &modified ? ' +' : ''
"   return filename . modified
" endfunction

" ===
" === spaceline
" ===
" let g:spaceline_colorscheme = 'dracula'
" let g:spaceline_seperate_style = 'slant-cons'
