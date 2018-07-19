let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'relativepath', 'modified' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'relativepath'] ]
      \ },
      \ 'tab': {
      \   'active': [ 'tabnum', 'filename' ],
      \   'inactive': [ 'tabnum', 'filename' ]
      \ }
      \ }
