" ========
" My remap
" ========
"

" Movements and general
" ---------------------
noremap H                        0
noremap L                        $
noremap 0                        H
noremap $                        L

" Normal mode
" -----------
nnoremap o                       o<Esc>
nnoremap O                       O<Esc>

" Cut & paste stuffs
" yank till the end of line
nnoremap Y                       y$

" reload (source) vimrc
nnoremap <silent> <leader>sv     :source $MYVIMRC<cr>

" move down
noremap <C-f>                    :normal! <C-D><CR>

" foldings
vnoremap <space>                 zf
nnoremap <expr> <space>          foldclosed('.') != -1 ? 'zO' : 'zc'
" <C-space> seems to be special and not available,
" <C-@> instead do the job (it works as ctrl + space)
"nnoremap <expr> <C-@>            &foldlevel != 0 ? 'zM' :'zR'

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
noremap  <silent> <C-w>          :q<CR>
vnoremap <silent> <C-w>          <C-c>:q<CR>
inoremap <silent> <C-w>          <C-o>:q<CR>
" not use the following to not overwrite WORD jumping
"nnoremap <S-w>                   :q<CR>

" Insert mode
" -----------
inoremap <C-u>                   <Esc>gUawa

" toggle paste mode
set pastetoggle=<F3>

" toggle tagbar
noremap <F8>                     :TagbarToggle<CR>

" visual mode blockwise indent
vnoremap >                       >gv
vnoremap <                       <gv

" Search for word under cursor with * or # in new window:
"nnoremap <C-w>*                  <C-w>s*
"nnoremap <C-w>#                  <C-w>s#
