" Macros

" Convert old ruby hash syntax
nmap <leader>hr F:xea:<ESC>wdw 

" JS describe and it block
nmap <leader>jd idescribe('', () => {})<ESC>hi<CR><ESC>Oit('', () => {})<ESC>hi<CR><ESC>
nmap <leader>ji iit('', () => {})<ESC>hi<CR><ESC>

" RSpec describe and it block
nmap <leader>rd idescribe "" do<CR>it "" do<CR><ESC>k^f"a
nmap <leader>ri iit "" do<CR><ESC>k^f"a

