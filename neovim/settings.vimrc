colorscheme gruvbox
if !exists("g:syntax_on")
  syntax enable
endif
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
set relativenumber
set gdefault
set breakindent
set showbreak=\\\\\

autocmd FileType gitcommit,markdown,md,text,txt setlocal spell
autocmd FileType gitcommit,markdown,md,text,txt setlocal complete+=kspell
autocmd VimResized * wincmd =

