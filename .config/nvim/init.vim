let mapleader=" "

source $HOME/.config/nvim/plugged/plugins.vim

lua << EOF
require('vgit').setup()
EOF

let g:lsc_server_commands = {'java': '/home/chan/server/java-language-server/dist/lang_server_linux.sh'}

" basics
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=2
" When deleting whitespace at the beginning of a line,
" delete 1 tab worth of spaces
set smarttab

autocmd Filetype python setlocal tabstop=2 shiftwidth=2 softtabstop=2


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

" Make your code text more readable
map <leader>g :Goyo \| set linebreak<CR>

" Split
set splitbelow splitright

" Lightline
set laststatus=2
set noshowmode

" Global Mapping key

map <C-H> gT
map <C-L> gt
map <leader>r :%s/\s\+$//<CR>
map <leader>tab :TableModeRealign<CR>
map <leader>tme :TableModeEnable<CR>
map <leader><C-E> :Vifm<CR>
map <C-N> :tabnew<CR>
set pastetoggle=<F3>

" Normal mode Mapping key

nmap <leader>cft :ClangFormat<CR>
vmap <leader>cft :ClangFormat<CR>
nmap <leader>fb :Files ~/workspace/build<CR>
nmap <leader>ff :Files .<CR>

let g:vimwiki_list = [{
			\ 'path': '~/vimwiki',
			\ 'syntax': 'markdown',
			\ 'ext': '.wiki',
			\}]
