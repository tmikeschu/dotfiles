" Existing b:match_words definition (if any)
if exists("b:match_words")
  let b:match_words .= ','
else
  let b:match_words = ''
endif

" Add Ruby-specific matches
let b:match_words .= '\<\%(if\|unless\|case\|while\|until\|for\|do\|class\|module\|def\)\>:' .
                   \ '\<\%(else\|elsif\|ensure\|when\|rescue\|break\|redo\|next\|retry\)\>:' .
                   \ '\<end\>'

" Optional: Add support for %w() and similar constructs
let b:match_words .= ',\%(%\w\)\=[[\{(]:\%(%\w\)\=[[\{(]'
