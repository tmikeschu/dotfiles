call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'groenewege/vim-less'
call neobundle#end()

NeoBundleCheck
