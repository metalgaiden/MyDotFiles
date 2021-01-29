" this is only if you have a terminal that switches from block to line cursor
" autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
" autocmd VimLeave * silent exec "! echo -ne '\e[5 q'"
" let &t_SI = "\e[5 q"
" let &t_EI = "\e[1 q"

if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/unblevable/quick-scope'
call plug#end()

" home row movement
noremap l h
noremap ; l
noremap h ; 

" indent based on filetype
filetype indent plugin on
set autoindent

" quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" persistant undo
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "p")
endif
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
