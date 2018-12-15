let b:ale_linters = ['standardrb']
let b:ale_fixers = ['standardrb']

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'thoughtbot/vim-rspec'
call neobundle#end()
NeoBundleCheck
