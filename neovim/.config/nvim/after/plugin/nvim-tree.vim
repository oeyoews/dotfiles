" nvim-tree locaton in right
let g:nvim_tree_side = 'right' 
" open new file, close nvim-tree or not
let g:nvim_tree_quit_on_open = 1
" nvim-tree's width is 30
let g:nvim_tree_width = 30 

let g:nvim_tree_ignore = [ 'node_modules', '.cache' ]
let g:nvim_tree_gitignore = 1
let g:nvim_tree_auto_open = 1
let g:nvim_tree_auto_close = 1
let g:nvim_tree_auto_ignore_ft = []
let g:nvim_tree_follow = 1
let g:nvim_tree_follow_update_path = 1
let g:nvim_tree_indent_markers = 0
let g:nvim_tree_hide_dotfiles = 0
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_root_folder_modifier = ':~'
let g:nvim_tree_tab_open = 1
let g:nvim_tree_auto_resize = 1
let g:nvim_tree_disable_netrw = 0
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
let g:nvim_tree_update_cwd = 1
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_refresh_wait = 500
let g:nvim_tree_window_picker_exclude = {
			\   'filetype': [
				\     'notify',
				\     'packer',
				\     'qf'
				\   ],
				\   'buftype': [
					\     'terminal'
					\   ]
					\ }
let g:nvim_tree_special_files = { 
      \ 'README.md': 1,
      \ 'Makefile': 1,
      \ 'MAKEFILE': 1
      \ }
let g:nvim_tree_icons = {
			\ 'default': '',
			\ 'symlink': '',
			\ 'git': {
				\   'unstaged': "✗",
				\   'staged': "✓",
				\   'unmerged': "",
				\   'renamed': "➜",
				\   'untracked': "★",
				\   'deleted': "",
				\   'ignored': "◌"
				\   },
				\ 'folder': {
					\   'arrow_open': "",
					\   'arrow_closed': "",
					\   'default': "",
					\   'open': "",
					\   'empty': "",
					\   'empty_open': "",
					\   'symlink': "",
					\   'symlink_open': "",
					\   },
					\   'lsp': {
						\     'hint': "",
						\     'info': "",
						\     'warning': "",
						\     'error': "",
						\   }
						\ }

" Mappings
nnoremap <silent> <SPACE>ft :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
" highlight folder
highlight NvimTreeFolderIcon guibg=blue
