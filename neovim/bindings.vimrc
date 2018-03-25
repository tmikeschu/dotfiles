let mapleader = " "

" Saving/Closing
map <leader>s :w<CR>
map <leader>q :q<CR>
map <leader>wq :wq<CR>

" Folds
vmap <leader>f :fold<CR>

" Clipboard
vmap <leader>y "*y<CR>
nmap <leader>p "*p<CR>
nmap <leader>P "*P<CR>

" Window Navigation
nnoremap <leader>tn :tabnew<CR>:e.<CR>
nnoremap <Tab> <C-w><C-w>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
nnoremap <leader>vs <CR>:vsp<CR><C-w>l
nnoremap <leader>hs <CR>:sp<CR><C-w>j<CR>:resize 20<CR>
nnoremap <leader>e <CR>:Explore<CR>

"Terminal
tnoremap <Esc><Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n> :wincmd h<CR>
tnoremap <C-j> <C-\><C-n> :wincmd j<CR>
tnoremap <C-k> <C-\><C-n> :wincmd k<CR>
tnoremap <C-l> <C-\><C-n> :wincmd l<CR>
nnoremap <leader>z <CR>:sp<CR><C-w>j<CR>:resize 10<CR><CR>:set wfh<CR><CR>:terminal<CR>source $HOME/.bash_profile<CR>clear<CR>
nnoremap <leader>t <CR>:terminal<CR>source $HOME/.bash_profile<CR>


" No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Window Sizing
map <leader>rv <CR>:vertical resize
map <leader>rh <CR>:resize
nmap <leader>= :wincmd =<CR>
nmap <leader>_ :wincmd _<CR>
nmap <leader>\| :wincmd \|<CR>
nmap <leader>R :wincmd R<CR>

" Macros
nmap <leader>m @

" Search
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
vnoremap // y/<C-R>"<CR>
