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
	Plug 'ackyshake/VimCompletesMe'

	Plug 'dhruvasagar/vim-table-mode'

	" Language server
	Plug 'neovim/nvim-lspconfig'
	Plug 'natebosch/vim-lsc'

	" Language coloration
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" Color Scheme
	Plug 'morhetz/gruvbox'

	" Color Scheme
	Plug 'aserowy/tmux.nvim'

	" Clang-format
	Plug 'rhysd/vim-clang-format'
call plug#end()
