" My remap
nnoremap o                       o<Esc>
nnoremap O                       O<Esc>
nnoremap à                       :
nnoremap <silent> <C-n>          :NERDTreeToggle<CR>
"nnoremap <S-w>                   :q<CR>
nnoremap <expr> <space>          foldclosed('.') != -1 ? 'zO' : 'zc'
nnoremap <silent> <F9>           :Black<CR>
nnoremap <silent> <C-_>          :Pydocstring<CR>

inoremap òò                      <Esc>

vnoremap <space>                 zf

" Map commands in insert mode with <C-o> 
" to run command and keep position
" Map commands in visual mode with <C-c>
" to kill selection before
noremap  <silent> <C-s>          :update<CR>
vnoremap <silent> <C-s>          <C-c>:update<CR>
inoremap <silent> <C-s>          <C-o>:update<CR>
noremap  <silent> <C-q>          :qa<CR> 
vnoremap <silent> <C-q>          <C-c>:qa<CR>
inoremap <silent> <C-q>          <C-o>:qa<CR>
noremap  <silent> <C-d>          :call NERDComment(0,"toggle")<CR>
inoremap  <silent> <C-d>         <C-o>:call NERDComment(0,"toggle")<CR>

" Move with ctrl in insert mode
inoremap <C-h>                   <C-o>h
inoremap <C-j>                   <C-o>j
inoremap <C-k>                   <C-o>k
inoremap <C-l>                   <C-o>l

set pastetoggle=<F3>
