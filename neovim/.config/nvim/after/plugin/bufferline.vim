nnoremap <silent><SPACE>ws :BufferLinePick<CR>
nnoremap <silent><SPACE>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><SPACE>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><SPACE>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><SPACE>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><SPACE>5 <Cmd>BufferLineGoToBuffer 5<CR>
lua << EOF
require('bufferline').setup {
	options = {
		numbers = "ordinal",
		left_mouse_command = "buffer %d",
		separator_style = "thin",
offsets = {{filetype = "NvimTree", text = "File Explorer" }},
		}
	}
EOF
