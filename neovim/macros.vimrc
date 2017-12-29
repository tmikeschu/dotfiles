" Macros

" Convert old ruby hash syntax
nmap <leader>hr F:xea:<ESC>wdw 

" JS describe and it block
nmap <leader>jd idescribe('', () => {})<ESC>hi<CR><ESC>A;<ESC>Oit('', () => {})<ESC>hi<CR><ESC>A;<ESC>
nmap <leader>ji iit('', () => {})<ESC>hi<CR><ESC>A;<ESC>

" RSpec describe and it block
nmap <leader>rd idescribe "" do<CR>it "" do<CR><ESC>k^f"a
nmap <leader>ri iit "" do<CR><ESC>k^f"a

" console.log()
nmap <leader>cl iconsole.log()<ESC>i<CR><ESC>O

" break comma separated arguments to new lines
nmap <leader>, ^f,wi<BS><CR><ESC>

" import default ES6
nmap <leader>id ^iimport from '';<ESC>Ffi<Space><ESC>i
nmap <leader>in ^iimport {  } from '';<ESC>F{la

" export default ES6
nmap <leader>ed Go<CR><ESC>^iexport default ;<ESC>i
