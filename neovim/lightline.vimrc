let g:lightline = {
      \ 'colorscheme': 'nightowl',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'relativepath', 'modified' ]
      \   ],
      \   'right':[
      \     [ 'lineinfo', 'percent' ],
      \     [ 'status' ]
      \   ],
      \ },
      \ 'inactive': {
      \   'left': [ [ 'relativepath'] ]
      \ },
      \ 'tab': {
      \   'active': [ 'tabnum', 'filename' ],
      \   'inactive': [ 'tabnum', 'filename' ]
      \ },
      \ 'component_function': {
      \   'status': 'LightlineGitStatus',
      \ }
      \ }

function! LightlineGitStatus() abort
  let status = get(g:, 'coc_git_status', '')
  " return blame
  return winwidth(0) > 120 ? status : ''
endfunction

let g:lightline.component_expand = {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \   'linter_checking': 'left',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'left',
      \ }
