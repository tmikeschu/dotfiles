let g:solarized_termcolors=256
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|dist$\|node_modules$\|tmp$\|public$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:elm_format_autosave = 1

if !has('nvim')
  let g:go_version_warning = 0
endif

let g:gutentags_ctags_exclude=["node_modules",".git", "dist", "vendor", "public", "db", ".next", "cypress"]

let g:context_enabled = 0

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
