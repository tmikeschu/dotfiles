set nocompatible
autocmd! GUIEnter * set vb t_vb=

if !exists("g:syntax_on")
  syntax enable
endif
filetype plugin indent on


" Color
if (has("termguicolors"))
 set termguicolors
endif

colorscheme night-owl
set background=dark
highlight Comment cterm=italic

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
set list listchars=tab:→\ ,trail:·
set updatetime=100

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

" Syntax
autocmd FileType vue syntax sync fromstart
autocmd FileType tsx syntax sync fromstart
