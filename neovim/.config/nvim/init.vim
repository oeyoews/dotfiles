" === 
" === TODO 📁
" === 

"  BUG: visual secection for snips(optional!)
"  BUG: have a file , source will error(optional!)
"  BUG:	M char is dis appear(optional!)
"	 BUG: config color for complete(optional)
"	 HACK: moudles for init.vim(optional)

"  TODO: messages need touch space or enter use new window to manage this command print result
"  TODO: test recursion: map and nomap
"	 TODO: learn plugin or ftplugin' function
"  TODO: vnoremap : '<,'>normal<SPACE>
"  TODO: use ls to list all buffer, how to jump special buffer in maxium window
"  TODO: learn todo keyword for this plugin in the single gutter
"	 TODO:	 code-runner
"	 TODO: for bd , how to silent(buffer)
"	 TODO: configure gitgutter and setting 优先级 for gutter
"	 how to del some bookmarks
"	 TODO: have some bug
"	 help in file
"	 undotree how to preview
"	 learn register && 如何将vim的文字同步到system
"	 how to smart quit window?
"	 learn config bullets.vim and table-mode md config
"	 how to complete direction in current text

"  HACK: how to bindings to require for https://github.com/folke/trouble.nvim (API)

" ===
" === deprecated snips
" ===
" autocmd! BufWritePost $MYVIMRC source $MYVIMRC
" :ls show all buffers
" :tabs show all tabs
" vim -u NORC
" set runtimepath?
" :h config
" let $MYVIMRC = "$HOME/.config/nvim/init.vim"
" eg: nnoremap <SPACE>tp :tabnew $MYVIMRC<CR>:echom "Open MYVIMRC!"<CR>
" eg: noremap <SPACE>tP <CR>:source<SPACE>$MYVIMRC<CR>:echom "Refresh finished!"<ESC>
" nnoremap <silent> <SPACE>a; mqA;<ESC>`q :echom "Add a Comma in the end!"<CR>
" nnoremap <SPACE>ti :source<SPACE>%<CR> :PlugInstall<CR>

" ===
" === Mappings
" ===

nnoremap  <SPACE>fpy :let @+=expand('%:p')<CR> :echo "Copy path finished!"<CR>

" switch
nnoremap <silent> <SPACE>tn :set number! relativenumber!<CR>
nnoremap <silent> <SPACE>ts :set signcolumn=yes<CR>
nnoremap <silent> <SPACE>tS :set signcolumn=no<CR>
nnoremap <silent> <SPACE>tw :set wrap!<CR>
nnoremap <silent> <SPACE>tp :set spell!<CR>
nnoremap <silent> <SPACE>tl :set list<CR>
nnoremap <silent> <SPACE>tL :set nolist<CR>

" continue indent
noremap > >gv
noremap < <gv

" command mode
noremap <space>hh :h<space>
noremap <space>hc :
nnoremap <SPACE>he :echo<SPACE>
nnoremap <SPACE>ss /

" buffer
nnoremap <silent> <SPACE>bn :bn<CR>
nnoremap <silent> <SPACE>bd :bd<CR><C-L>
nnoremap <silent> <SPACE>bh :vnew<CR>
nnoremap <silent> <SPACE>bx :tabnew<CR>
nnoremap <silent><SPACE>bm :messages<CR>

" quit window
nnoremap <silent><SPACE>qq :q<CR>
nnoremap <silent><SPACE>qQ :q!<CR>

" window split
noremap s <nop>
nnoremap <SPACE>w- :split<CR>
nnoremap <SPACE>w/ :vsplit<CR>
nnoremap <SPACE>wh <C-w>h
nnoremap <SPACE>wj <C-w>j
nnoremap <SPACE>wk <C-w>k
nnoremap <SPACE>wl <C-w>l
nnoremap <SPACE>ww <C-w>w
nnoremap <SPACE>wm <C-w>o

" vim-plug
nnoremap <SPACE>pi :PlugInstall<CR>
nnoremap <SPACE>pc :PlugClean<CR>
nnoremap <SPACE>pu :PlugUpdate<CR>
nnoremap <SPACE>pU :PlugUpgrade<CR>

" misc
noremap L $
nnoremap Y "*p
nnoremap <C-a> ggVG
nnoremap guw gUawe
let g:mapleader = ','
inoremap jk <ESC>
nnoremap <silent><SPACE>fs :w<CR>
nnoremap <silent> <SPACE>sc :set<SPACE>hlsearch!<CR>
nnoremap <silent> <SPACE>fe :edit $MYVIMRC<CR>
nnoremap <silent> <SPACE>hrr :source $MYVIMRC<CR>
noremap <ESC> <ESC><C-L>

" ===
" ===  Options
" ===
set selectmode=""
set matchtime=2
set virtualedit=block
set number relativenumber
set autochdir  " simply minbuffer messages
set autoindent
language messages en_US.utf8
set nowrap
set smartcase
set exrc
set autoread
set secure
set mouse=nv " support mouse
set linebreak " better wrap
set hidden  " not must be save current buffer
set ruler  " show line number and column number in status
set nocursorline  " highlight current line
set ignorecase  " better search"
" right: mode statusline
set showcmd  
" left: location statusline
set noshowmode 
set shortmess+=aIc  " atI clear advertise
set noexpandtab  " disable expand tab to whitespace
set timeoutlen=1000
set textwidth=120  " after 120 char, wrap automatically
set showmatch  " call quote in visual
set shiftwidth=2  " default indent distance for >> <<
set tabstop=2 " tab == 2 column, like 单位
set softtabstop=2 " tab == 2 column truly
set guifont=Droid\ Sans\ Mono
set smartindent
set clipboard^=unnamed
set nolist " show return it configcit for link
set listchars=tab:→\ ,eol:↵,trail:▫,extends:↷,precedes:↶
set lazyredraw "same as above
set vb t_vb= " no sound, no shine
set novisualbell
set noerrorbells  " no beeps
set sidescroll=1  " for nowrap lines, scroll them smoothly
set nobackup  " no backfile
set noswapfile  " no swapfile
set nofoldenable " disable automatical fold code, you can fold code by hand must in before
set confirm
set scrolloff=3
set signcolumn=no  " left gutter
set updatetime=200	" ??
set foldmethod=marker  " set foldmethod
set viewoptions=cursor,folds,slash,unix

" ===
" === PLUGINS
" ===
" automatical checkinstall vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	" silent
	execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://gitee.com/oeyoews/vim-plug/raw/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" checkinstall
" autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"				\| PlugInstall --sync | source $MYVIMRC
"				\| endif

call plug#begin('$HOME/.config/nvim/plugged')

" let g:plug_url_format = 'git@github.com:%s.git'

Plug 't9md/vim-choosewin'
" Plug 'Shougo/vimshell.vim'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Plug 'wellle/context.vim'
Plug 'mhinz/vim-startify'
" Plug 'tweekmonster/exception.vim'
" Plug 'Shougo/echodoc.vim'
"
Plug 'justinmk/vim-syntax-extra'
Plug 'skywind3000/asyncrun.vim'
" Plug 'prabirshrestha/vim-lsp'

" Plug 'folke/todo-comments.nvim'

" notify
Plug 'rcarriga/nvim-notify'

Plug 'ray-x/lsp_signature.nvim'

" snippets
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
" complete and error tips
Plug 'nvim-lua/completion-nvim'
" Plug 'steelsojka/completion-buffers'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
" Plug 'nvim-treesitter/playground'
Plug 'folke/trouble.nvim'
" lsp_ui
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/completion-treesitter'

" search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" css-color
" Plug 'ap/vim-css-color'
Plug 'norcalli/nvim-colorizer.lua'

" terminal
" Plug 'skywind3000/vim-terminal-help'

" buffer manager tab icons
Plug 'akinsho/bufferline.nvim' " some bugs like mapping will be deprecated
" Plug 'romgrk/barbar.nvim'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'dhruvasagar/vim-table-mode'

Plug 'itchyny/calendar.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'yianwillis/vimcdoc'
Plug 'folke/twilight.nvim'
Plug 'junegunn/fzf.vim'
" bookmarks
Plug 'MattesGroeger/vim-bookmarks'
" Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'tpope/vim-capslock'
Plug 'tyru/open-browser.vim'
Plug 'junegunn/goyo.vim'
Plug 'lambdalisue/suda.vim'
Plug 'makerj/vim-pdf'
Plug 'airblade/vim-gitgutter'

" file manager
" Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Plug 'ntpeters/vim-better-whitespace'
" Plug 'windwp/nvim-autospace'

Plug 'preservim/nerdcommenter'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'folke/which-key.nvim'

" statusline
" Plug 'itchyny/lightline.vim'
" Plug 'hoob3rt/lualine.nvim'
" Plug 'shadmansaleh/lualine.nvim'
Plug 'windwp/windline.nvim'

" misc tools
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'

" format
" Plug 'google/vim-maktaba'
" Plug 'google/vim-codefmt'
Plug 'Chiel92/vim-autoformat'

" indentline
" Plug 'Yggdroot/indentLine'
" Plug 'lukas-reineke/indent-blankline.nvim'

" Plug 'glepnir/dashboard-nvim'
call plug#end()


" ===
" === dashboard.nvim
" ===
" TODO config
"https://github.com/glepnir/dashboard-nvim
" eg : "SPC mean the leaderkey
" let g:dashboard_default_executive ='fzf'
" let g:dashboard_custom_shortcut={
" 			\ 'last_session'       : 'SPC s l',
" 			\ 'find_history'       : 'SPC f h',
" 			\ 'find_file'          : 'SPC f f',
" 			\ 'new_file'           : 'SPC c n',
" 			\ 'change_colorscheme' : 'SPC t c',
" 			\ 'find_word'          : 'SPC f a',
" 			\ 'book_marks'         : 'SPC f b',
" 			\ }
" let g:dashboard_custom_shortcut_icon['last_session'] = ' '
" let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
" let g:dashboard_custom_shortcut_icon['find_file'] = ' '
" let g:dashboard_custom_shortcut_icon['new_file'] = ' '
" let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
" let g:dashboard_custom_shortcut_icon['find_word'] = ' '
" let g:dashboard_custom_shortcut_icon['book_marks'] = ' '

" ===
" === markdown-preview.nvim
" ===
" autocmd FileType markdown if open it directly, can't use this command TODO
autocmd FileType markdown nnoremap <space>fmp :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
nnoremap <SPACE>fmb bi**<ESC>ea**<ESC>

" ===
" === vim-markdown-toc
" ===
autocmd FileType markdown nnoremap <space>fmit :GenTocMarked<CR>

" ===
" === rainbow
" ===
" TODO need test shortkey
let g:rainbow_active = 1 " if set 1, it's conflicts to nerdtree
" nnoremap <space>tr :RainbowToggle<CR>

" ===
" === vim-better_whitespace.vim
" ===
" TODO: how to silent?
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" ===
" === open-browser.vim
" ===
nnoremap <SPACE>bu :OpenBrowser<SPACE>https://
" eg: command! Open OpenBrowserSmartSearch
nnoremap <SPACE>bs :OpenBrowserSmartSearch<SPACE>

" ===
" === nerdcommenter.vim
" ===
" command: <leader>ci
" link: https://github.com/preservim/nerdcommenter/blob/master/README.md
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" ===
" === tokyonight
" ===
" link: https://github.com/folke/tokyonight.nvim
" before options: day storm(default) night
" let g:tokyonight_style = "day"
" after
colorscheme tokyonight

" ===
" === windline.nvim
" ===
nnoremap <SPACE>sn :lua require('wlsample.evil_line')<CR>
			\ :echom "Switch lsp_statusline!"<CR>
lua << EOF
require('wlsample.bubble')
-- require('wlsample.evil_line')
EOF

" ===
" === lualine
" ===
lua << END
-- local custom_gruvbox = require'lualine.themes.gruvbox'
--[[
require'lualine'.setup{
options = { theme  = custom_gruvbox },
}
--]]
-- require'lualine'.setup()
END

" ===
" === lightline(deprecated)
" ===
set laststatus=2
let g:lightline = {
			\ 'mode_map': {
				\ 'n' : 'N',
				\ 'i' : 'I',
				\ 'R' : 'R',
				\ 'v' : 'V',
				\ 'V' : 'VL',
				\ "\<C-v>": 'VB',
				\ 'c' : 'C',
				\ 's' : 'S',
				\ 'S' : 'SL',
				\ "\<C-s>": 'SB',
				\ 't': 'T',
				\ },
				\ 'colorscheme': 'tokyonight',
				\ 'active': {
					\   'left': [ [ 'mode', 'paste' ],
					\             [ 'readonly', 'filename', 'modified' ] ]
					\ },
					\ }

" ===
" === which-key.vim
" ===
" link: https://github.com/folke/which-key.nvim
"
lua << EOF
require("which-key").setup {
	operators = { gc = "Comments" },
	spelling = {
	enabled = true, -- in normal, enabling this will show WhichKey when pressing z= to select spelling suggestions
	suggestions = 10, --how many suggestions should be shown in the list?
	},
layout = {
	height = { min = 4, max = 25 }, -- min and max height of the columns
	width = { min = 20, max = 50 }, -- min and max width of the columns
	spacing = 3, -- spacing between columns
	align = "center"  -- align columns left, center or right
	},
window = {
	border = "single", -- none, single, double, shadow
	position = "bottom", -- bottom, top
	margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
	padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
	},
icons = {
	breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
	separator = "➜", -- symbol used between a key and it's label
	group = "+", -- symbol prepended to a group
	},
presets = {
	operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
	motions = true, -- adds help for motions
	text_objects = true, -- help for text objects triggered after entering an operator
	windows = true, -- default bindings on <c-w>
	nav = true, -- misc bindings to work with windows
	z = true, -- bindings for folds, spelling and others prefixed with z
	g = true, -- bindings for prefixed with g
	},
opts = {
	mode = "n", -- NORMAL mode
	-- prefix: use "<leader>f" for example for mapping everything related to finding files
	-- the prefix is prepended to every mapping part of `mappings`
	prefix = "nil",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
	}
}
EOF

" ===
" === trouble.nvim
" ===
" linka: https://github.com/folke/trouble.nvim
lua << EOF
require("trouble").setup {}
EOF
nnoremap <silent> <SPACE>td :TroubleToggle<CR>

" ===
" === vim-markdown
" ===
" NOTE: reagin config for nvim
let g:vim_markdown_folding_disabled = 1 " just disable folding for markdown
let g:vim_markdown_toc_autofit = 1
set conceallevel=2
let g:vim_markdown_conceal_code_blocks = 1  " disable hiden code-blocks
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_follow_anchor = 1  " jump: ge
" gx like gopen for [demo](http)
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_edit_url_in = 'tab'


" ==
" == GitGutter
" ==
" let g:gitgutter_signs = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 1
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = ' '
let g:gitgutter_sign_modified = 'ﱅ'
let g:gitgutter_sign_removed = '﯊'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
nnoremap H :GitGutterPreviewHunk<CR>

" ===
" === nvim-tree
" ===
" link: https://github.com/kyazdani42/nvim-tree.lua
let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_width = 30 "30 by default, can be width_in_columns or 'width_in_percent%'
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_auto_open = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_follow_update_path = 1 "0 by default, will update the path of the current dir if the file is not inside the tree.
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_auto_resize = 0 "1 by default, will resize the tree to its saved width when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
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
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
" let g:nvim_tree_show_icons = {
"     \ 'git': 1,
"     \ 'folders': 1,
"     \ 'files': 0,
"     \ 'folder_arrows': 1,
"     \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)
" default will show icon by default if no icon is provided
" default shows no icon by default
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
nnoremap <silent> <SPACE>ft :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose and NvimTreeFocus are also available if you need them
" set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue


" ===
" === Undotree
" ===
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
noremap <F5> :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
" function g:Undotree_CustomMap()
	" nmap <buffer> u <plug>UndotreeNextState
	" nmap <buffer> e <plug>UndotreePreviousState
	" nmap <buffer> U 5<plug>UndotreeNextState
	" nmap <buffer> E 5<plug>UndotreePreviousState
" endfunc

" ===
" === Bullets.vim
" ===
" command: <Leader>x togglecheckbox
" let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'scratch'
			\]

" ===
" === vim-calendar
" ===
noremap <silent> <SPACE>ac :Calendar -position=here<CR>
" noremap \\ :Calendar -view=clock -position=here<CR>
" let g:calendar_google_calendar = 1
" let g:calendar_google_task = 1
" augroup calendar-mappings
"		autocmd!
"		" diamond cursor
"		autocmd FileType calendar nmap <buffer> u <Plug>(calendar_up)
"		autocmd FileType calendar nmap <buffer> n <Plug>(calendar_left)
"		autocmd FileType calendar nmap <buffer> e <Plug>(calendar_down)
"		autocmd FileType calendar nmap <buffer> i <Plug>(calendar_right)
"		autocmd FileType calendar nmap <buffer> <c-u> <Plug>(calendar_move_up)
"		autocmd FileType calendar nmap <buffer> <c-n> <Plug>(calendar_move_left)
"		autocmd FileType calendar nmap <buffer> <c-e> <Plug>(calendar_move_down)
"		autocmd FileType calendar nmap <buffer> <c-i> <Plug>(calendar_move_right)
"		autocmd FileType calendar nmap <buffer> k <Plug>(calendar_start_insert)
"		autocmd FileType calendar nmap <buffer> K <Plug>(calendar_start_insert_head)
"		" unmap <C-n>, <C-p> for other plugins
"		autocmd FileType calendar nunmap <buffer> <C-n>
"		autocmd FileType calendar nunmap <buffer> <C-p>
" augroup END

" ===
" === goyo
" ===
" Goyo like GoyoToggle
nnoremap <SPACE>tr :Goyo<CR>

" ===
" === suda.vim
" ===
nnoremap <SPACE>fE :SudaRead<CR>
nnoremap <SPACE>fw :SudaWrite<CR>

" ===
" === lualine.nvim
" ===
lua <<EOF
-- [[
-- require('lualine').setup {
--	options = {
-- theme = 'palenight'
--	theme = 'evil' -- lualinenotice
-- }
-- }
--]]
EOF

" ===
" === bufferline.nvim
" ===
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

" ===
" === barbar
" ===
" nnoremap <silent>    <A-1> :BufferGoto 1<CR>
" nnoremap <silent>    <A-2> :BufferGoto 2<CR>
" nnoremap <silent>    <A-3> :BufferGoto 3<CR>
" nnoremap <silent>    <A-4> :BufferGoto 4<CR>
" nnoremap <silent>    <A-5> :BufferGoto 5<CR>
" nnoremap <silent>    <A-6> :BufferGoto 6<CR>
" nnoremap <silent>    <A-7> :BufferGoto 7<CR>
" nnoremap <silent>    <A-8> :BufferGoto 8<CR>
" nnoremap <silent>    <A-9> :BufferLast<CR>
" nnoremap <silent>    <A-,> :BufferPrevious<CR>
" nnoremap <silent>    <A-.> :BufferNext<CR>
" nnoremap <silent>    <A-c> :BufferClose<CR>
" let bufferline = get(g:, 'bufferline', {})
" let bufferline.add_in_buffer_number_order = v:true
" let bufferline.animation = v:false
" let bufferline.tabpages = v:false
" let bufferline.auto_hide = v:false
" let bufferline.maximum_length =  30
" let bufferline.maximum_padding =  4

" ===
" === css-highlight
" ===
lua <<EOF
require'colorizer'.setup()
EOF

" ===
" === telescope
" ===
" double esc to quit
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" ===
" === completion.nvim
" ===
lua <<EOF
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
EOF
autocmd BufEnter * lua require'completion'.on_attach()
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_confirm_key = "\<CR>"
let g:completion_matching_strategy_list = ['exact', 'substring']
let g:completion_matching_ignore_case = 0
let g:completion_matching_smart_case = 1
let g:completion_trigger_character = ['.', '::']
let g:completion_trigger_keyword_length = 2 " default = 1
let g:completion_trigger_on_delete = 1
let g:completion_timer_cycle = 200 "default value is 80

" ===
" === singature
" ===
lua << EOF
--[[
-- require "lsp_signature".setup({
--     bind = true, -- This is mandatory, otherwise border config won't get registered.
-- 		verbose = false,
--     handler_opts = {
--       border = "single"
--     }
--   })
--]]
EOF

" ===
" === completetion-buffer
" ===
let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'snippet']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]
" ===
" === UltSnips
" ===
" link: https://github.com/hrsh7th/vim-vsnip
nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger="\<CR>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/Ultisnips/',
			\ $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/',]

" ===
" === lspsaga.nvim(lsp_ui)
" ===
lua << EOF
local saga = require 'lspsaga'
saga.init_lsp_saga()
EOF
" quick fix like vscode
nnoremap <silent><space>qf :Lspsaga code_action<CR>
" NOTE: horver close error
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent>gs :Lspsaga signature_help<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent>gD :Lspsaga preview_definition<CR>
" A is <alt>
" some bug for this terminal
" nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

" ===
" === follow cursor
" ===
" Uncomment the following to have Vim jump to the last position when" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ===
" === different_color_cursor
" ===
hi Cursor guifg=green guibg=green
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" ===
" === vim-autoformat
" ===
autocmd! BufWrite *.c,*.h :Autoformat

" ===
" === playground
" ===
lua << EOF
--[[
require "nvim-treesitter.configs".setup {
	playground = {
	enable = true,
	disable = {},
	updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
	persist_queries = false, -- Whether the query persists across vim sessions
	keybindings = {
		toggle_query_editor = 'o',
		toggle_hl_groups = 'i',
		toggle_injected_languages = 't',
		toggle_anonymous_nodes = 'a',
		toggle_language_display = 'I',
		focus_language = 'f',
		unfocus_language = 'F',
		update = 'R',
		goto_node = '<cr>',
		show_help = '?',
		},
	}
}
--]]
EOF

" ===
" === nvim-treesitter
" ===
lua <<EOF
require'nvim-treesitter.configs'.setup {
ensure_installed = {
			\ "html", "lua", "c", "json", "yaml",
			\ "vim", "bash", "toml", "css", "cmake",
			\ "python", },
highlight = {
enable =false
},
	}
EOF

" ===
" === nvim-notify
" ===
lua << EOF
--[[
require("notify")("Finished!")
vim.notify = require("notify")
vim.notify("This is an error message", "error")
 --]]
EOF
" let VimNotify = luaeval('vim.notify')

" ===
" === todo-hlight
" ===

" ===
" === zen-mode
" ===
" Twilight = TwilghtToggle
nnoremap <SPACE>tz :Twilight<CR>
lua << EOF
  require("twilight").setup {}
EOF

" ===
" === auto-pairs
" ===
let g:AutoPairsFlyMode = 1

" ===
" === asynrun
" ===
let g:asyncrun_open = 6
let g:asyncrun_bell = 1
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>

" ===
" === vim-table-mode
" ===
" link: https://github.com/dhruvasagar/vim-table-mode
nnoremap <SPACE>fmt :TableModeToggle<CR>

" ===
" === echodoc
" ===
let g:echodoc_enable_at_startup = 1

" ===
" === vim-startify
" ===
nnoremap <SPACE>bH :Startify<CR>

" ===
" === vim-choosewin
" ===
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1
