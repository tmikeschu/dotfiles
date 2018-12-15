call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'leafgarland/typescript-vim'
call neobundle#end()

NeoBundleCheck
