set nocompatible

if !exists("g:syntax_on")
  syntax enable
endif
filetype plugin indent on


" Color
set background=dark
colorscheme OceanicNext

" Tabs/Backspace
set shiftwidth=2
set tabstop=2
set expandtab
set backspace=indent,eol,start

" Workspace
set textwidth=80
set ruler
set number
set relativenumber
set breakindent
set showbreak=\\\\\\\\\\\\\\\
set lbr
set smartindent

" Search
set nohlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

au TermOpen * setlocal nonumber norelativenumber


" Splits
set splitright
set splitbelow
autocmd VimResized * wincmd =

" Spellcheck
autocmd FileType gitcommit,markdown,md,text,txt setlocal spell
autocmd FileType gitcommit,markdown,md,text,txt setlocal complete+=kspell

" Formatting
source $HOME/dotfiles/neovim/syntastic.vimrc

" Files
set includeexpr=v:fname.'.'
