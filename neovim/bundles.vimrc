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
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround.git'

" Languages / Syntax
NeoBundle 'ElmCast/elm-vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'fatih/vim-go'
NeoBundle 'groenewege/vim-less'
NeoBundle 'guns/vim-sexp'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'peitalin/vim-jsx-typescript'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'posva/vim-vue'
NeoBundle 'rhysd/vim-crystal'
NeoBundle 'shime/vim-livedown'
NeoBundle 'slashmili/alchemist.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'styled-components/vim-styled-components'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tomlion/vim-solidity'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }

" Tools
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'ludovicchabant/vim-gutentags'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'  
NeoBundle 'maximbaz/lightline-ale'
NeoBundle 'segeljakt/vim-silicon'
NeoBundle 'w0rp/ale'
NeoBundle 'wakatime/vim-wakatime'
NeoBundle 'wellle/targets.vim'

" Colors
NeoBundle 'arcticicestudio/nord-vim'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'mhinz/vim-startify'

call neobundle#end()

NeoBundleCheck
