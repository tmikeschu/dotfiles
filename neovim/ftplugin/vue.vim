let b:ale_linter_aliases = ['javascript', 'vue']
let b:ale_linters = ['eslint']
let b:ale_fixers = ['prettier', 'eslint']

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'posva/vim-vue'
call neobundle#end()

NeoBundleCheck
