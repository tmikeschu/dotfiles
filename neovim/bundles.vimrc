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

" Tools
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'ludovicchabant/vim-gutentags'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'  
NeoBundle 'maximbaz/lightline-ale'
NeoBundle 'pbrisbin/vim-mkdir'
NeoBundle 'tpope/vim-commentary.git' " comments
NeoBundle 'tpope/vim-endwise' " close structures
NeoBundle 'tpope/vim-fugitive.git' " git
NeoBundle 'tpope/vim-repeat' " dot repeat commands
NeoBundle 'tpope/vim-rhubarb.git' " git
NeoBundle 'tpope/vim-sensible' " defaults
NeoBundle 'tpope/vim-surround.git' " paired chars
NeoBundle 'w0rp/ale'
NeoBundle 'wakatime/vim-wakatime'
NeoBundle 'wellle/targets.vim'

" Colors
NeoBundle 'morhetz/gruvbox'
NeoBundle 'arcticicestudio/nord-vim'

call neobundle#end()

NeoBundleCheck
