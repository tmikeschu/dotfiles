colorscheme gruvbox
let g:solarized_termcolors=256
syntax on
filetype plugin indent on

set nocompatible
set backspace=indent,eol,start
set number
set background=dark
set shiftwidth=2
set tabstop=2
set expandtab 
set textwidth=80
set nohlsearch
set incsearch
set ignorecase
set ruler
set textwidth=80

let g:airline_theme='luna'

autocmd FileType gitcommit,markdown,md,text,txt setlocal spell

