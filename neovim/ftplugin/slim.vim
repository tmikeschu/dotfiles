call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'slim-template/vim-slim'
call neobundle#end()

NeoBundleCheck
