let g:solarized_termcolors=256
let g:airline_theme='gruvbox'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|dist$\|node_modules$\|tmp$\|public$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

