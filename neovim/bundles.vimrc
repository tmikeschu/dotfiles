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

" Tim Pope
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'

" Languages / Syntax
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'styled-components/vim-styled-components'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tomlion/vim-solidity'
NeoBundle 'ElmCast/elm-vim'
NeoBundle 'vim-syntastic/syntastic'

" Tools
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'pbrisbin/vim-mkdir'
NeoBundle 'sbdchd/neoformat'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'wakatime/vim-wakatime'

" Colors
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'vim-airline/vim-airline-themes'

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
