call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'kchmck/vim-coffee-script'
call neobundle#end()

NeoBundleCheck
