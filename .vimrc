autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'"
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/ludovicchabant/vim-gutentags'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-airline/vim-airline'
call plug#end()

" indent based on filetype
filetype indent plugin on
set autoindent

" persistant undo
set undofile
set undodir=~/.vim/undodir

" tabs to spaces
set shiftwidth=4
set tabstop=4
set expandtab

" case non-sensitive
set ignorecase
set smartcase

" navigate splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" no more trailing white space
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" etc
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set wildmode=longest,list,full
set splitbelow splitright
set nocompatible
set visualbell
set hidden
set rnu nu
syntax on
