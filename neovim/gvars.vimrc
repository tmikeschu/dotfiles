let g:solarized_termcolors=256
let g:airline_theme='gruvbox'
let g:airline_section_x = airline#section#create([])
let g:airline_section_y = airline#section#create([])
let g:airline_section_z = airline#section#create(['linenr'])
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|dist$\|node_modules$\|tmp$\|public$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

