call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'shime/vim-livedown'
call neobundle#end()

NeoBundleCheck
