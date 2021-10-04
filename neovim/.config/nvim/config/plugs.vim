if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://gitee.com/oeyoews/vim-plug/raw/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.cache/nvim/plug')

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
Plug 'octaltree/cmp-look'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'kdheepak/cmp-latex-symbols', { 'for': 'tex' }
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'folke/trouble.nvim'
" Plug 'williamboman/nvim-lsp-installer'
Plug 'oeyoews/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/lua-dev.nvim'

" treesitter
" Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'romgrk/nvim-treesitter-context'

" norg
Plug 'nvim-neorg/neorg'

" latex
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex', { 'for': 'tex' }

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'dkarter/bullets.vim'
Plug 'dhruvasagar/vim-table-mode', { 'for': 'markdown' } 

" tools
Plug 'danilamihailov/beacon.nvim'
Plug 'dstein64/vim-startuptime', {'on': 'StartupTime'}
Plug 'akinsho/toggleterm.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mhinz/vim-startify'
Plug 'rhysd/clever-f.vim'
Plug 'airblade/vim-rooter'
Plug 'itchyny/calendar.vim'
Plug 'yianwillis/vimcdoc'
Plug 'akinsho/bufferline.nvim'
Plug 'tpope/vim-capslock'
Plug 'tyru/open-browser.vim'
Plug 'lambdalisue/suda.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/nerdcommenter'
Plug 'folke/which-key.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'rcarriga/nvim-notify'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'blackcauldron7/surround.nvim'
Plug 'phaazon/hop.nvim'
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'thinca/vim-quickrun'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'rafcamlet/nvim-luapad', { 'for': 'lua' }
Plug 'yuki-uthman/nvim-vimpad', { 'for': 'vim'}
Plug 'nvim-telescope/telescope.nvim', { 'on': 'Telescope' }
Plug 'junegunn/goyo.vim'

" icons
Plug 'kyazdani42/nvim-web-devicons'

" theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'oeyoews/windline.nvim'
Plug 'oeyoews/nvim-deus'
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'glepnir/zephyr-nvim'
" Plug 'itchyny/lightline.vim'
" Plug 'shadmansaleh/lualine.nvim'
" Plug 'glepnir/spaceline.vim'

call plug#end()
