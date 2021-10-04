runtime! ../src/install/*.vim

call plug#begin('$HOME/.cache/nvim/plug')

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'oeyoews/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/lua-dev.nvim'


" cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
Plug 'octaltree/cmp-look'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'kdheepak/cmp-latex-symbols', { 'for' : 'tex' }

" treesitter
Plug 'nvim-treesitter/playground', { 'on' : 'TSPlaygroundToggle' }
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'romgrk/nvim-treesitter-context'

" norg
Plug 'nvim-neorg/neorg', { 'for': ' norg ' }

" latex
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex', { 'for': 'tex' }

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'dhruvasagar/vim-table-mode'

" tools
Plug 'danilamihailov/beacon.nvim'
Plug 'dstein64/vim-startuptime'
Plug 'lewis6991/gitsigns.nvim'
Plug 'rhysd/clever-f.vim'
Plug 'airblade/vim-rooter'
Plug 'yianwillis/vimcdoc'
Plug 'akinsho/bufferline.nvim'
Plug 'tpope/vim-capslock'
Plug 'tyru/open-browser.vim'
Plug 'lambdalisue/suda.vim'
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
Plug 'nvim-telescope/telescope.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-tree.lua'

" icons
Plug 'kyazdani42/nvim-web-devicons'

" statusline
Plug 'oeyoews/windline.nvim'

" theme
Plug 'oeyoews/nvim-deus'
" Plug 'glepnir/zephyr-nvim'

call plug#end()
