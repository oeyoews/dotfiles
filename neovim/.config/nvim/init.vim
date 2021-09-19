" autocmd! BufWritePost $MYVIMRC source %
" | echom "Refreshed!"
" $MYVIMRC
let &wrap = 0 " set nowrap
" learn ga
" gv to learn(optional)
" TODO: vim-rooter(optional)
" TODO: learn trouble nvim
" TODO: after only, how to return last buffer
" TODO: learn <Plug> interface
" ===
" === Mappings
" ===

" open init.vim
nnoremap <silent> <SPACE>fe :edit $MYVIMRC<CR>
nnoremap <SPACE>hrr :source $MYVIMRC<CR> :echom "Refresh finisned!"<CR>

" buffer
nnoremap <silent><SPACE>cn :tabnew<CR>

noremap L $
nnoremap <silent><SPACE>bm :messages<CR>
map <ESC> <ESC><C-L>

" system copy
nnoremap Y "*p

" set leader
let g:mapleader = ','

" vim-plug
nnoremap <SPACE>ti :PlugInstall<CR>
nnoremap <SPACE>tc :PlugClean<CR>
nnoremap <SPACE>tu :PlugUpdate<CR>
nnoremap <SPACE>tU :PlugUpgrade<CR>

" toggle wrap status
nnoremap <SPACE>sw :set wrap!<CR>
nnoremap <SPACE>sp :set spell!<CR>
nnoremap <SPACE>sc :set<SPACE>hlsearch!<CR>

" toggle Upercase
nnoremap guw gUawe

" vnoremap : '<,'>normal<SPACE>
" TODO: learn vmap
"

inoremap <C-V> <ESC>p
nnoremap <C-A> ggVG

" save file
nnoremap <silent><C-S> :wa<CR>
nnoremap <silent><SPACE>fs :w<CR>

" quit insert mode
inoremap jk <ESC>

" quit window
nnoremap <silent><SPACE>qq :q<CR>
nnoremap <silent><leader>qq :q!<CR>

" maxiam current window
nnoremap <silent><SPACE>wm :only<CR>

" window split
" Disable the default s key
noremap s <nop>
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" ===
" === Set settings
" ===
set number relativenumber
set exrc
set autoread
set secure
set mouse+=a  " support mouse
set linebreak " better wrap
set hidden  " not must be save current buffer
set ruler  " show line number and column number in status
set cursorline  " highlight current line
" set smartcase " fast search
set ignorecase  " better search"
set noshowcmd  " left: mode statusline
set noshowmode " right location statusline
" share register unnammed " with system
" set clipboard^=unnamed  
set shortmess+=atIc  " clear advertise
set noexpandtab  " disable expand tab to whitespace
set timeoutlen=500
" TODO: :h close
" TODO: 学习正则表达,匹配多种文件的类型
"				tree disable to open new file
"				try close tab (close not really close tab)
" TODO moudles for init.vim(optional)
" TODO space f o(filetree location)
"			 code-runner
" TODO clear highlight
" TODO 数字选择标签窗口
set wildmenu " enhance for complete
set textwidth=120  " after 120 char, wrap automatically
set tabstop=2 " tab == 2 column, like 单位
set noshowmatch  " call quote in visual
set shiftwidth=2  " default indent distance for >> <<
set softtabstop=2 " tab == 2 column truly
" set list " show return it configcit for link
set listchars=tab:→\ ,eol:↵,trail:▫,extends:↷,precedes:↶
" set splitright
" set splitbelow
" set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
" set ttyfast "should make scrolling faster
set lazyredraw "same as above
set vb t_vb= " no sound, no shine
set novisualbell
set noerrorbells
" auto crear dir
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo

" undodir 
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif

" ===
" === command mode
" ===
noremap <space>hh :h<space>
noremap <space>hc :
nnoremap <SPACE>he :echo<SPACE>
nnoremap <SPACE>ss /

set sidescroll=1  " for nowrap lines, scroll them smoothly
set nobackup  " no backfile
set noswapfile  " no swapfile

set foldmethod=marker
set nofoldenable " disable automatical fold code, you can fold code by hand must in before
set confirm
set scrolloff=1
set signcolumn=yes " left gutter
set updatetime=500	" ??
set foldmethod=marker  " set foldmethod
" let $MYVIMRC = "$HOME/.config/nvim/init.vim"
" eg: nnoremap <SPACE>tp :tabnew $MYVIMRC<CR>:echom "Open MYVIMRC!"<CR>
" eg: noremap <SPACE>tP <CR>:source<SPACE>$MYVIMRC<CR>:echom "Refresh finished!"<ESC>
" nnoremap <silent> <SPACE>a; mqA;<ESC>`q :echom "Add a Comma in the end!"<CR>
" nnoremap <SPACE>ti :source<SPACE>%<CR> :PlugInstall<CR>
" TODO: tabnext and tabNext
" tabedit TODO

" ===
" === Ps
" ===
" automatical checkinstall vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	" silent 
	execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  https://gitee.com/oeyoews/vim-plug/raw/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" checkinstall
" autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
" 			\| PlugInstall --sync | source $MYVIMRC
" 			\| endif
" 
call plug#begin('$HOME/.config/nvim/plugged')
" let g:plug_url_format = 'git@github.com:%s.git'

" notify
" Plug 'rcarriga/nvim-notify'

" bookmarks
Plug 'MattesGroeger/vim-bookmarks'
" Plug 'tom-anders/telescope-vim-bookmarks.nvim'

" lsp_ui
Plug 'glepnir/lspsaga.nvim'

" snippets
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'

" complete and error tips
" bugs :checkhealth snippets error(optional)
" Plug 'nvim-lua/completion-nvim'

" search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'norcalli/nvim-colorizer.lua'
Plug 'skywind3000/vim-terminal-help'

" buffer manager tab icons
" some bugs like mapping will be deprecated
" Plug 'akinsho/bufferline.nvim'
Plug 'romgrk/barbar.nvim'

" statusline
" Plug 'hoob3rt/lualine.nvim'
" Plug 'shadmansaleh/lualine.nvim'

Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'itchyny/calendar.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'yianwillis/vimcdoc'
" Plug 'ap/vim-css-color'
" Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-capslock'
Plug 'tyru/open-browser.vim'
" Plug 'scrooloose/nerdtree'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'folke/which-key.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
" Plug 'nvim-treesitter/playground'

" lang#
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'mbbill/undotree'
Plug 'dkarter/bullets.vim'
Plug 'jiangmiao/auto-pairs'

" format
" Plug 'google/vim-maktaba'
" Plug 'google/vim-codefmt'
Plug 'Chiel92/vim-autoformat'

" Plug 'Yggdroot/indentLine'

Plug 'junegunn/goyo.vim'
Plug 'lambdalisue/suda.vim'
Plug 'makerj/vim-pdf'
Plug 'airblade/vim-gitgutter'

" Plug 'glepnir/dashboard-nvim'
" Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()


" ===
" === dashboard.nvim
" ===
" TODO config
"https://github.com/glepnir/dashboard-nvim
let g:dashboard_default_executive ='fzf'
" eg : "SPC mean the leaderkey
let g:dashboard_custom_shortcut={
			\ 'last_session'       : 'SPC s l',
			\ 'find_history'       : 'SPC f h',
			\ 'find_file'          : 'SPC f f',
			\ 'new_file'           : 'SPC c n',
			\ 'change_colorscheme' : 'SPC t c',
			\ 'find_word'          : 'SPC f a',
			\ 'book_marks'         : 'SPC f b',
			\ }
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
autocmd FileType markdown nnoremap <space>fmm :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
nnoremap <SPACE>fmb bi**<ESC>ea**<ESC>

" ===
" === vim-markdown-toc
" ===
autocmd FileType markdown nnoremap <space>fmt :GenTocMarked<CR>

" ===
" === rainbow
" ===
" TODO need test shortkey
let g:rainbow_active = 1 " if set 1, it's conflicts to nerdtree
nnoremap <space>tr :RainbowToggle<CR>:echom "enable rainbow_bract!"<CR>

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
" link: https://github.com/preservim/nerdcommenter/blob/master/README.md
" Create default mappings
let g:NERDCreateDefaultMappings = 0
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
nnoremap <SPACE>cc <Plug>NERDCommenterComment
nnoremap <SPACE>c<SPACE> <Plug>NNERDCommenterToggle

" TODO: how to open link in vim

" ===
" === tokyonight and lightline
" ===
" link: https://github.com/folke/tokyonight.nvim
colorscheme tokyonight
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
      suggestions = 10, -- how many suggestions should be shown in the list?
    },
	layout = {
		height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
		align = "center"  -- align columns left, center or right
		},
	window = {
		border = "double", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
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
		prefix = "b", 
		buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
		silent = true, -- use `silent` when creating keymaps
		noremap = true, -- use `noremap` when creating keymaps
		nowait = false, -- use `nowait` when creating keymaps
		}
	}
EOF

" TODO
"https://github.com/folke/trouble.nvim


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


" ===
" === nerdtree
" ===
autocmd FileType nerdtree nmap <Tab> <CR>

" ==
" == GitGutter
" ==
" let g:gitgutter_signs = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

" ===
" === nvim-tree
" ===
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
" Default is 0
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
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose and NvimTreeFocus are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue
" https://github.com/kyazdani42/nvim-tree.lua


" ===
" === Undotree
" ===
noremap <F5> :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
endfunc


" ===
" === Bullets.vim
" ===
" let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
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
" === AutoFormat
" ===
augroup autoformat_settings
	" autocmd FileType bzl AutoFormatBuffer buildifier
	" autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
	" autocmd FileType dart AutoFormatBuffer dartfmt
	" autocmd FileType go AutoFormatBuffer gofmt
	" autocmd FileType gn AutoFormatBuffer gn
	" autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
	autocmd FileType java AutoFormatBuffer google-java-format
	" autocmd FileType python AutoFormatBuffer yapf
	" Alternative: autocmd FileType python AutoFormatBuffer autopep8
	" autocmd FileType rust AutoFormatBuffer rustfmt
	" autocmd FileType vue AutoFormatBuffer prettier
augroup END

" ===
" === goyo
" ===
nnoremap <SPACE>wc :Goyo<CR>

" ===
" === suda.vim
" ===

" ===
" === lualine.nvim
" ===
" TODO rainbow sometimes, it's disappear
lua <<EOF
-- require('lualine').setup {
-- 	options = {
-- theme = 'palenight'
-- 	theme = 'evil' -- lualinenotice
-- }
-- }
EOF

" ===
" === blankkindentline
" ===
lua <<EOF
-- vim.opt.listchars = {
--     space = "⋅",
--     eol = "↴",
-- }
--
-- require("indent_blankline").setup {
--     space_char_blankline = " ",
--     show_current_context = true,
-- }
EOF


" ===
" === barbar
" ===
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>

let bufferline = get(g:, 'bufferline', {})
let bufferline.add_in_buffer_number_order = v:true
let bufferline.animation = v:false
let bufferline.tabpages = v:false
" let bufferline.auto_hide = v:true
let bufferline.maximum_length =  10
let bufferline.maximum_padding =  1 
" ===
" === bufferline
" ===
" TODO config it
lua << EOF
-- require("bufferline").setup{}
EOF

" ===
" === term-help
" ===
" https://github.com/skywind3000/vim-terminal-help

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
" TODO https://github.com/nvim-lua/completion-nvim
"https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#vimls
" :LSPInfo
lua <<EOF
-- lang#vim (memory is a little big, disable it templately)
-- require'lspconfig'.vimls.setup{on_attach=require'completion'.on_attach}
-- lang#c
--require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
--vim.lsp.set_log_level("debug")
EOF
" autocmd BufEnter * lua require'completion'.on_attach()

" formatter
"https://github.com/mhartington/formatter.nvim

" ===
" === nvim-lspconfig
" ===
lua << EOF
require'lspconfig'.clangd.setup{}
EOF

" ===
" === UltSnips
" ===
" link: https://github.com/hrsh7th/vim-vsnip
" let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<C-e>"
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/Ultisnips/',
			\ "UltiSnips",
			\ $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/']

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
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

" ===
" === term better
" ===
" ALT + =: toggle terminal below.
" ALT + SHIFT + h: move to the window on the left.
" ALT + SHIFT + l: move to the window on the right.
" ALT + SHIFT + j: move to the window below.
" ALT + SHIFT + k: move to the window above.
" ALT + SHIFT + n: move to the previous window.
" ALT + -: paste register 0 to terminal.
" ALT + q: switch to terminal normal mode.

" ===
" === vim-bookmarks.nvim
" ===
" TODO: config(optional)
" links: https://github.com/MattesGroeger/vim-bookmarks
lua <<EOF
-- require('telescope').load_extension('vim_bookmarks')
EOF
" shortkeys
" Add/remove bookmark at current line	mm	:BookmarkToggle
" Add/edit/remove annotation at current line	mi	:BookmarkAnnotate <TEXT>
" Jump to next bookmark in buffer	mn	:BookmarkNext
" Jump to previous bookmark in buffer	mp	:BookmarkPrev
" Show all bookmarks (toggle)	ma	:BookmarkShowAll
" Clear bookmarks in current buffer only	mc	:BookmarkClear
" Clear bookmarks in all buffers	mx	:BookmarkClearAll
" Move up bookmark at current line	[count]mkk	:BookmarkMoveUp [<COUNT>]
" Move down bookmark at current line	[count]mjj	:BookmarkMoveDown [<COUNT>]
" Move bookmark at current line to another line	[count]mg	:BookmarkMoveToLine <LINE>
" Save all bookmarks to a file		:BookmarkSave <FILE_PATH>
" Load bookmarks from a file		:BookmarkLoad <FILE_PATH>

" ===
" === follow cursor
" ===
" Uncomment the following to have Vim jump to the last position when" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ===
" === vim-autoformat
" ===
autocmd! BufWrite *.[c] :Autoformat

" ===
" === playground
" ===
lua << EOF
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
-- require("notify")("My super important message")
EOF
