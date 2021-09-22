nnoremap <SPACE>sn :lua require('wlsample.evil_line')<CR>
			\ :echom "Switch lsp_statusline!"<CR>
lua << EOF
require('wlsample.bubble')
-- require('wlsample.evil_line')
EOF
