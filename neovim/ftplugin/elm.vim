let b:ale_linters = ['elm-format']
let b:ale_fixers = ['format']
set shiftwidth=4
set tabstop=4

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'ElmCast/elm-vim'
call neobundle#end()

NeoBundleCheck
