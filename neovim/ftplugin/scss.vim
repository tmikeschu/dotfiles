call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'cakebaker/scss-syntax.vim'
call neobundle#end()

NeoBundleCheck
