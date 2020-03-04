" My remap
nnoremap o                       o<Esc>
nnoremap O                       O<Esc>
nnoremap à                       :
nnoremap <C-n>                   :NERDTreeToggle<CR>
nnoremap <S-w>                   :q<CR>
nnoremap <space>                 za
nnoremap <F9>                    :Black<CR>

inoremap òò                      <Esc>

vnoremap <space>                 zf

noremap <silent> <C-s>           :update<CR>
vnoremap <silent> <C-s>          <C-C>:update<CR>
inoremap <silent> <C-s>          <C-O>:update<CR>
noremap <silent> <C-q>           :qa<CR> 
vnoremap <silent> <C-q>          <C-C>:qa<CR>
inoremap <silent> <C-q>          <C-O>:qa<CR>
noremap <C-d>                    :call NERDComment(0,"toggle")<CR>

set pastetoggle=<F3>
