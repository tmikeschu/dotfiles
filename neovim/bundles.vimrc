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
NeoBundle 'burnettk/vim-angular'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'chr4/nginx.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'evanleck/vim-svelte'
NeoBundle 'fatih/vim-go'
NeoBundle 'groenewege/vim-less'
NeoBundle 'guns/vim-sexp'
NeoBundle 'jparise/vim-graphql'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'peitalin/vim-jsx-typescript'
NeoBundle 'posva/vim-vue'
NeoBundle 'rhysd/vim-crystal'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'shime/vim-livedown'
NeoBundle 'slashmili/alchemist.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'styled-components/vim-styled-components'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tomlion/vim-solidity'
NeoBundle 'vim-ruby/vim-ruby'

" Tools
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'ludovicchabant/vim-gutentags'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'  
NeoBundle 'maximbaz/lightline-ale'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'segeljakt/vim-silicon'
NeoBundle 'w0rp/ale'
NeoBundle 'wakatime/vim-wakatime'
NeoBundle 'wellle/context.vim'
NeoBundle 'wellle/targets.vim'

" Colors
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'Rigellute/shades-of-purple.vim'
NeoBundle 'arcticicestudio/nord-vim'
NeoBundle 'haishanh/night-owl.vim'
NeoBundle 'iCyMind/NeoSolarized'
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'morhetz/gruvbox'

call neobundle#end()

NeoBundleCheck
