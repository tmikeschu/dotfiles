let maplocalleader = ","

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'guns/vim-sexp'
call neobundle#end()

NeoBundleCheck
