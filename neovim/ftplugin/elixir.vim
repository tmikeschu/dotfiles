let b:ale_linters = ['mix_format']
let b:ale_fixers = ['mix_format']

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'slashmili/alchemist.vim'
call neobundle#end()

NeoBundleCheck
