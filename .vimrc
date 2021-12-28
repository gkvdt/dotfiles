syntax on
filetype on
filetype plugin on
filetype indent on
set nu
set relativenumber
set cursorline

" always switch to current directory
set autochdir

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase

set nocompatible

" Indenting
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=4

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

set bg=dark
set mouse=a


set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'nikvdp/ejs-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'voldikss/vim-floaterm'
Plugin 'https://github.com/joshdick/onedark.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required

colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:airline_theme='onedark'

map <Space> <Leader>

map <Leader>e <Cmd>CocCommand explorer<CR>



" insert mode
inoremap <expr> <C-j> '<ESC>5jzza'
inoremap <expr> <C-k> '<ESC>5kzza'

" visual mode
vnoremap <expr> <C-j> '5jzz'
vnoremap <expr> <C-k> '5kzz'

" normal mode
nnoremap <expr> <C-j> '5jzz'
nnoremap <expr> <C-k> '5kzz'

nnoremap <expr> <C-D> '5jzz'
nnoremap <expr> <C-U> '5kzz'

inoremap <expr> <C-D> '<ESC>5jzza'
inoremap <expr> <C-U> '<ESC>5kzza'

" normal mode
nnoremap <expr> <leader>j winheight(0).'<C-D>zz'
nnoremap <expr> <leader>k winheight(0).'<C-U>zz'


let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
let g:rainbow_active = 1
