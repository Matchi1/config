let mapleader=" "

let g:python3_host_prog = '/usr/bin/python3'
let g:isort_command = 'isort'

source $HOME/.config/nvim/plugged/plugins.vim

lua require("config")
lua require("options")

" basics
set nocompatible
filetype plugin on
syntax on

colorscheme gruvbox

set background=light

set colorcolumn=120
set textwidth=120
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey

" Make your code text more readable
map <leader>g :Goyo \| set linebreak<CR>

" Black config
let g:black_linelength = 120

" fzf project settings
 
let g:fzfSwitchProjectWorkspaces = [ '~/workspace/', '~/workspace/school/' ]

" Global Mapping key

map <C-H> gT
map <C-L> gt
map <leader>r :%s/\s\+$//<CR>
map <leader>h :noh<CR>
map <leader>tab :TableModeRealign<CR>
map <leader>tme :TableModeEnable<CR>
map <leader>do :DiffviewOpen<CR>
map <leader>dc :DiffviewClose<CR>
map <leader><C-E> :Vifm<CR>
map <C-N> :tabnew<CR>
set pastetoggle=<F3>

set noeol nofixeol

" Normal mode Mapping key

nmap <leader>ff :GitFiles<CR>
nmap <leader>fp :FzfSwitchProject<CR>

let g:vimwiki_global_ext = 0
let g:vimwiki_list = [
            \{
            \ 'path': '~/wiki/qarnot',
            \ 'syntax': 'markdown',
            \ 'ext': '.wiki',
            \},
            \{
            \ 'path': '~/wiki/private',
            \ 'syntax': 'markdown',
            \ 'ext': '.md',
            \}]

" Tags
set tags=./tags,tags;

" goyo settings
let g:goyo_width = 100
let g:goyo_height = 80
let g:goyo_linenr = 0

" Gitgutter settings
let g:gitgutter_terminal_reports_focus=0

" Vimwiki settings
let g:vimwiki_listsyms = '✗○◐●✓'

set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m

" # Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

map <leader><backspace> :wq<CR>
map <leader>m :marks<CR>

" Tags
map <C-]> <C-]>z<return>

" Comment
map gc :call Comment()<CR>
map gC :call Uncomment()<CR>

" Gitgutter

nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)
nmap <leader>ga <Plug>(GitGutterStageHunk)
nmap <leader>gu <Plug>(GitGutterUndoHunk)

au BufWritePost lua require('lint').try_lint()

autocmd BufWritePre *.go execute ':GoFmt'
" autocmd BufWritePre *.c execute ':ClangFormat'

function! Comment()
    let ft = &filetype
    if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
        silent s/^/\#/
    elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
        silent s:^:\/\/:g
    elseif ft == 'tex'
        silent s:^:%:g
    elseif ft == 'vim'
        silent s:^:\":g
    endif
endfunction

function! Uncomment()
    let ft = &filetype
    if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
        silent s/^\#//
    elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
        silent s:^\/\/::g
    elseif ft == 'tex'
        silent s:^%::g
    elseif ft == 'vim'
        silent s:^\"::g
    endif
endfunction

function! VimwikiLinkHandler(link)
  " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
  "   1) [[vfile:~/Code/PythonProject/abc123.py]]
  "   2) [[vfile:./|Wiki Home]]
  let link = a:link
  if link =~# '^vfile:'
    let link = link[1:]
  else
    return 0
  endif
  let link_infos = vimwiki#base#resolve_link(link)
  if link_infos.filename == ''
    echomsg 'Vimwiki Error: Unable to resolve link!'
    return 0
  else
    exe 'tabnew ' . fnameescape(link_infos.filename)
    return 1
  endif
endfunction

" # generate help files
packloadall
silent! helptags ALL

" # Diary update
command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end
