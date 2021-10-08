call plug#begin('$HOME/.cache/nvim/plug')

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'onsails/lspkind-nvim'
Plug 'folke/lua-dev.nvim'

" cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'octaltree/cmp-look'

" treesitter
Plug 'nvim-treesitter/playground', { 'on' : 'TSPlaygroundToggle' }
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'romgrk/nvim-treesitter-context'

" norg
Plug 'nvim-neorg/neorg', { 'for': ' norg ' }

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'dhruvasagar/vim-table-mode'

" tools
Plug 'dstein64/vim-startuptime'
Plug 'rhysd/clever-f.vim'
Plug 'yianwillis/vimcdoc'
Plug 'akinsho/bufferline.nvim'
Plug 'lambdalisue/suda.vim'
Plug 'preservim/nerdcommenter'
Plug 'folke/which-key.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'rcarriga/nvim-notify'
Plug 'phaazon/hop.nvim'
Plug 'thinca/vim-quickrun'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'nvim-telescope/telescope.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'oeyoews/nvim-tree.lua'
Plug 'danilamihailov/vim-tips-wiki'
Plug 'lewis6991/gitsigns.nvim'

" theme
Plug 'kyazdani42/nvim-web-devicons'
Plug 'windwp/windline.nvim'

call plug#end()
