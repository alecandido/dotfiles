" My remap
nnoremap o                       o<Esc>
nnoremap O                       O<Esc>
nnoremap à                       :
nnoremap <silent> <C-n>          :NERDTreeToggle<CR>
"nnoremap <S-w>                   :q<CR>
nnoremap <expr> <space>          foldclosed('.') != -1 ? 'zO' : 'zc'
nnoremap <silent> <F9>           :Black<CR>
nnoremap <silent> <C-u>          <Plug>(pydocstring)


inoremap òò                      <Esc>

vnoremap <space>                 zf

noremap  <silent> <C-s>          :update<CR>
vnoremap <silent> <C-s>          <C-C>:update<CR>
inoremap <silent> <C-s>          <C-O>:update<CR>
noremap  <silent> <C-q>          :qa<CR> 
vnoremap <silent> <C-q>          <C-C>:qa<CR>
inoremap <silent> <C-q>          <C-O>:qa<CR>
noremap  <silent> <C-d>          :call NERDComment(0,"toggle")<CR>

set pastetoggle=<F3>
