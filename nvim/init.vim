let mapleader=" "

source $HOME/.config/nvim/plugged/plugins.vim

let g:lsc_server_commands = {'java': '/home/chan/server/java-language-server/dist/lang_server_linux.sh'}

" basics
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set tabstop=4 shiftwidth=4

colorscheme gruvbox
set background=dark

" column settings
set colorcolumn=80
set textwidth=80
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey

set backup swapfile undofile

" Temporary files location
set backupdir=~/.cache/nvim/backup,/tmp//
set directory=~/.cache/nvim/swp,/tmp//
set undodir=~/.cache/nvim/undo,/tmp//

" enable autocompletion
set wildmode=longest,list,full

" Indentation
set autoindent

" When deleting whitespace at the beginning of a line, delete
" 1 tab worth of spaces 	
set smarttab

" Make your code text more readable
map <leader>g :Goyo \| set linebreak<CR>

" Split
set splitbelow splitright

" Lightline
set laststatus=2
set noshowmode

" Mapping key

map <C-H> gT
map <C-L> gt
map <leader>r :%s/\s\+$//<CR>
map <leader>tab :TableModeRealign<CR>
map <leader>tme :TableModeEnable<CR>
set pastetoggle=<F3>

let g:vimwiki_list = [{
			\ 'path': '~/vimwiki',
			\ 'syntax': 'markdown',
			\ 'ext': '.wiki',
			\}]

" for language server
