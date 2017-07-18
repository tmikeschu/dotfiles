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

NeoBundle 'tomlion/vim-solidity'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'wakatime/vim-wakatime'
NeoBundle 'pbrisbin/vim-mkdir'
NeoBundle 'cakebaker/scss-syntax.vim'

call neobundle#end()  
filetype plugin indent on

NeoBundleCheck  

