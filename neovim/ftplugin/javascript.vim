let b:ale_linters = ['eslint']
let b:ale_fixers = ['prettier', 'eslint']

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'styled-components/vim-styled-components'
call neobundle#end()

NeoBundleCheck
