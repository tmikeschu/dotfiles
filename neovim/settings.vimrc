set nocompatible
autocmd! GUIEnter * set vb t_vb=

if !exists("g:syntax_on")
  syntax enable
endif
filetype plugin indent on


" Color
colorscheme gruvbox
set background=dark

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

if has('nvim')
  au TermOpen * setlocal nonumber norelativenumber
endif


" Splits
set splitright
set splitbelow
autocmd VimResized * wincmd =

" Spellcheck
autocmd FileType gitcommit,markdown,md,text,txt setlocal spell
autocmd FileType gitcommit,markdown,md,text,txt setlocal complete+=kspell

" Formatting
source $HOME/dotfiles/neovim/ale.vimrc

" Files
set includeexpr=v:fname.'.'

" Tags
set tags=tags;
