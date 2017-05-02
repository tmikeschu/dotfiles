" " Referenced here:
" http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/
"
" " Original Author:   Bram Moolenaar <Bram@vim.org>
" " Made more minimal by:  Ben Orenstein
" " Last change:           2012 Jan 20
" 
" "  If you don't understand a setting in here, just type ':h setting'.
"
" " Use Vim settings, rather than Vi settings (much better!).
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'

" ------------------------------------
" THIS IS WHERE YOUR PLUGINS WILL COME
" ------------------------------------

NeoBundle 'tomlion/vim-solidity'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'kien/ctrlp.vim'

call neobundle#end()  
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------
"
set nocompatible

set backspace=indent,eol,start

syntax on
set number
" " Enable file type detection and do language-dependent indenting.
filetype plugin indent on
set background=dark
let g:solarized_termcolors=256
colorscheme gruvbox
set shiftwidth=2
set tabstop=2
set expandtab 
set textwidth=80
set nohlsearch
set incsearch
set ignorecase
set ruler


" Key Bindings
:let mapleader = ","

" Saving/Closing
:map <leader>s :w<CR>
:map <leader>q :q<CR>
:map <leader>wq :wq<CR>

" Highlighting
:map <leader>c :noh<CR><CR>

" Clipboard
:vmap <leader>y "*y<CR>
:nmap <leader>p "*p<CR>

" Window Navigation
:tnoremap <Esc><Esc> <C-\><C-n> 
:tnoremap <C-h> <C-\><C-n> :wincmd h<CR>
:tnoremap <C-j> <C-\><C-n> :wincmd j<CR>
:tnoremap <C-k> <C-\><C-n> :wincmd k<CR>
:tnoremap <C-l> <C-\><C-n> :wincmd l<CR>
:nnoremap <Tab> <C-w><C-w> 
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-l> :wincmd l<CR>
:nnoremap <leader>z <CR>:sp<CR><C-w>j<CR>:resize 15<CR><CR>:set wfh<CR><CR>:terminal<CR>source $HOME/.bash_profile<CR>clear<CR>
:nnoremap <leader>t <CR>:terminal<CR>source $HOME/.bash_profile<CR>
:nnoremap <leader>vs <CR>:vsp<CR><C-w>l
:nnoremap <leader>hs <CR>:sp<CR><C-w>j<CR>:resize 20<CR>
:nnoremap <leader>e <CR>:Explore<CR>

" No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Window Sizing
:map <leader>vr <CR>:vertical resize 
:map <leader>hr <CR>:resize 

