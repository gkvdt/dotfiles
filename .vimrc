set nu
syntax on
filetype plugin indent on
set cursorline
set noswapfile
set tabstop=4
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'StanAngeloff/php.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()


set noswapfile 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'zhaocai/GoldenView.Vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Bundle 'stephpy/vim-php-cs-fixer'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()

map <C-x><C-f> :NERDTreeToggle<CR>
imap <C-x><C-f> :NERDTreeToggle<CR>

map <C-x><C-d> :FZF <CR>
imap <C-x><C-d> :FZF <CR>

colorscheme molokai
"colorscheme Benokai

" PHP-CS-FIXER
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar

" If you use php-cs-fixer version 1.x
"let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
"let g:php_cs_fixer_config = "default"                  " options: --config
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag" " options: --fixers
"let g:php_cs_fixer_config_file = '.php_cs'            " options: --config-file
" End of php-cs-fixer version 1 config params

" If you use php-cs-fixer version 2.x
"let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.


"./ PHP-CS-FIXER




" PHP
function! PhpSyntaxOverride()
  " Put snippet overrides in this function.
  hi! link phpDocTags phpDefine
  hi! link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
"./PHP


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeWinSize=22




set clipboard=unnamed          " ┐
                               " │ Use the system clipboard
if has("unnamedplus")          " │ as the default register
    set clipboard+=unnamedplus " │
endif                          " ┘

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSippetDirectories=['~/.vim/bundle/ultisnips','UltiSnips']
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
