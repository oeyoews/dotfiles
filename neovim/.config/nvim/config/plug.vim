if empty(glob('~/.config/nvim/autoload/plug.vim'))
   silent execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://gitee.com/oeyoews/vim-plug/raw/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" dont modify it easyle, it related to UltiSnips's path
call plug#begin('$HOME/.cache/nvim/plug')

Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'blackcauldron7/surround.nvim'
" easymotion
Plug 'phaazon/hop.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
" Plug 'glepnir/lspsaga.nvim'
Plug 'tami5/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'

" run
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'thinca/vim-quickrun'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'dhruvasagar/vim-table-mode'

" tools
Plug 'dstein64/vim-startuptime', {'on':'StartupTime'}
Plug 'akinsho/toggleterm.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mhinz/vim-startify'
" Plug 't9md/vim-choosewin'
Plug 'rhysd/clever-f.vim'
Plug 'airblade/vim-rooter'
Plug 'itchyny/calendar.vim'
Plug 'norcalli/nvim-colorizer.lua'
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

" icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'windwp/windline.nvim'

call plug#end()
