execute pathogen#infect()
syntax on
filetype plugin indent on
set mouse=a
set number
set encoding=utf8

" set noexpandtab
" set copyindent
" set preserveindent

set softtabstop=0
set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme solarized

" Set to auto read when a file is changed from the outside
set autoread

let mapleader = ","
let g:mapleader = ","

" " :W sudo saves the file
command W w !sudo tee % > /dev/null

" "Always show current position
set ruler

" " Ignore case when searching
set ignorecase

" " Highlight search results
set hlsearch

" " Show matching brackets when text indicator is over them
set showmatch

" Open new split panes to right and bottom
set splitbelow
set splitright

" auto insert command leader
set formatoptions+=r

let g:neocomplete#enable_at_startup = 1

" autocmd vimenter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" navigation beetwien splits with ctrl+j etc.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" move a line upward
map - dd2kp

" move a line downward
map _ ddp

" open current window in new tab
:nnoremap <Leader>f :tabe %<CR>


autocmd FileType javascript UltiSnipsAddFiletypes javascript-jasmine-arrow

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
