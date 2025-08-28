if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

	Plug 'psliwka/vim-smoothie'

	Plug 'vimwiki/vimwiki'

	Plug 'itchyny/lightline.vim'

	Plug 'jiangmiao/auto-pairs'

	Plug 'tpope/vim-surround'

	" Auto Completion (see if necessary)
	Plug 'vim-scripts/VimCompletesMe'

	Plug 'dhruvasagar/vim-table-mode'

	" Language server
	Plug 'neovim/nvim-lspconfig'
	Plug 'natebosch/vim-lsc'

	" Language coloration
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" Color Scheme
	Plug 'morhetz/gruvbox'

	" Tmux Integration
	Plug 'aserowy/tmux.nvim'

	" Clang-format
	Plug 'rhysd/vim-clang-format'

    " File Explorer
    Plug 'vifm/vifm.vim'

    Plug 'nvim-lua/plenary.nvim'

    Plug 'airblade/vim-gitgutter'

    " Vim diff
    Plug 'sindrets/diffview.nvim'

    Plug 'mattn/calendar-vim'

    " python formatter
    Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
    Plug 'psf/black', {'tag': '19.10b0'}

    Plug 'folke/todo-comments.nvim'
    Plug 'folke/trouble.nvim'

    Plug 'ThePrimeagen/refactoring.nvim'

    Plug 'tpope/vim-fugitive'
    Plug 'benwainwright/fzf-project'

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'mfussenegger/nvim-lint'
call plug#end()
