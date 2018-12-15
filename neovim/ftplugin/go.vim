call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'fatih/vim-go'
call neobundle#end()

NeoBundleCheck
