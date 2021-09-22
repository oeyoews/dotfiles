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
" let g:plug_url_format = 'git@github.com:%s.git'
call plug#begin('$HOME/.config/nvim/plug')

Plug 'rhysd/clever-f.vim'

Plug 'nvim-neorg/neorg' 
Plug 'liuchengxu/vista.vim'
Plug 't9md/vim-choosewin'

Plug 'mhinz/vim-startify'

Plug 'justinmk/vim-syntax-extra'
Plug 'skywind3000/asyncrun.vim'

Plug 'rcarriga/nvim-notify'

Plug 'ray-x/lsp_signature.nvim'

Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
Plug 'folke/trouble.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'onsails/lspkind-nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'akinsho/bufferline.nvim' " some bugs like mapping will be deprecated

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'dhruvasagar/vim-table-mode'

Plug 'itchyny/calendar.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'yianwillis/vimcdoc'
Plug 'junegunn/fzf.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tpope/vim-capslock'
Plug 'tyru/open-browser.vim'
Plug 'lambdalisue/suda.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'preservim/nerdcommenter'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'folke/which-key.nvim'

Plug 'windwp/windline.nvim'

Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'

Plug 'Chiel92/vim-autoformat'
call plug#end()
