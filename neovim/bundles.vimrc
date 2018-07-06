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
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround.git'

" Languages / Syntax
NeoBundle 'ElmCast/elm-vim'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'fatih/vim-go'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'posva/vim-vue'
NeoBundle 'slashmili/alchemist.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'styled-components/vim-styled-components'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tomlion/vim-solidity'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'shime/vim-livedown'

" Tools
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'pbrisbin/vim-mkdir'
NeoBundle 'sbdchd/neoformat'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'wakatime/vim-wakatime'
NeoBundle 'ludovicchabant/vim-gutentags'

" Colors
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-airline/vim-airline-themes'

call neobundle#end()

NeoBundleCheck
