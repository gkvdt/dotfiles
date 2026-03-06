set syntax=on
filetype on
filetype plugin on
filetype indent on
set nu
set relativenumber
set cursorline
set noswapfile
"" always switch to current directory
set autochdir

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase

set nocompatible

set autoindent
set smartindent

set tabstop=2
set shiftwidth=2
set softtabstop=2

"Visual
set number
set nohls
set showcmd

set backspace=indent,eol,start
set showmatch

" status line stuff
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

set shellslash
set grepprg=grep\ -nH\ $*

"set bg=dark
set mouse=a
