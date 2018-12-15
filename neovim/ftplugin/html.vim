call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'othree/html5.vim'
call neobundle#end()

NeoBundleCheck
