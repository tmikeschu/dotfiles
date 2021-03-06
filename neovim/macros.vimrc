" Macros

" Convert old ruby hash syntax
nmap <leader>hr F:xea:<ESC>wdw<Space>

" JS describe and it block
nmap <leader>jd idescribe('', () => {})<ESC>hi<CR><ESC>A;<ESC>Oit('', () => {})<ESC>hi<CR><ESC>A;<ESC>
nmap <leader>ji iit('', () => {})<ESC>hi<CR><ESC>A;<ESC>

" RSpec describe and it block
nmap <leader>rd odescribe "" do<CR><ESC>ddk<Space>ri<ESC>k0f"a
nmap <leader>ri oit "" do<CR><ESC>k0f"a

" console.log()
nmap <leader>cl iconsole.log()<ESC>i<CR><ESC>O

" break comma separated arguments to new lines
nmap <leader>, ^f,wi<BS><CR><ESC>

" import default ES6
nmap <leader>id ^iimport from '';<ESC>Ffi<Space><ESC>i
nmap <leader>in ^iimport {  } from '';<ESC>F{la

" export default ES6
nmap <leader>ed Go<CR><ESC>^iexport default ;<ESC>i

" JSX eslint disable/enable comment wrapper
nmap <leader>jsxesl vipS/A* eslint-disable */<ESC>v^S}}kA* eslint-enable */<ESC>v^S}vip=2f*bea<Space>

" JSX comment
nmap <leader>jsxc O{/* */}<ESC>2F*a<Space>

" Ramda-esque log helper
nmap <leader>rl ^iconst LOG = label => x => { console.log(label, x); return x; }<ESC>

" Ruby log helper
nmap <leader>rbl ^ilog = ->(x) { byebug; x }

" Insert pry
nmap <leader>rbp Orequire "pry"; binding.pry<ESC>:w<CR>

" grep for term
nmap <leader>gw yiwq:igrep -R ""<ESC>i<C-R><C-R>"<ESC>A<Space>
vmap <leader>g yq:igrep -R ""<ESC>i<C-R><C-R>"<ESC>A<Space>
