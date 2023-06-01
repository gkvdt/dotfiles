set syntax on
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


set rtp+=~/config/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'townk/vim-autoclose'
Plugin 'preservim/nerdcommenter'
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
nnoremap <expr> <C-j> 'jjjjjzz'
nnoremap <expr> <C-k> '5kzz'

nnoremap <expr> <C-D> '5jzz'
nnoremap <expr> <C-U> '5kzz'

inoremap <expr> <C-D> '<ESC>5jzza'
inoremap <expr> <C-U> '<ESC>5kzza'

vnoremap <expr> <C-D> '5jzz'
vnoremap <expr> <C-U> '5kzz'
" normal mode
nnoremap <expr> <leader>j winheight(0).'<C-D>zz'
nnoremap <expr> <leader>k winheight(0).'<C-U>zz'

nnoremap <expr> <leader>c '<leader>c<space>'
vnoremap <expr> <leader>c '<leader>c<space>'

inoremap <expr> <C-E> '<ESC>$a'
nnoremap <expr> <C-E> '$'
vnoremap <expr> <C-E> '$'

inoremap <expr> <C-B> '<ESC>0i'
nnoremap <expr> <C-B> '0'
vnoremap <expr> <C-B> '0'

nnoremap <expr> <C-L> '<C-W><C-W>'
nnoremap <expr> <C-H> '<C-W>h'

noremap <C-Z> zz


let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
let g:rainbow_active = 1



"CocCommand  prettier.formatFile
let g:coc_global_extensions = ['@yaegassy/coc-intelephense','coc-json', 'coc-git','coc-blade','coc-css','coc-emmet','coc-eslint','coc-html','coc-html-css-support','coc-prettier','coc-tsserver','coc-vetur','coc-xml','coc-explorer','coc-floaterm']
