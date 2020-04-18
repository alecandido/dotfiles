" ========
" My remap
" ========
"
nnoremap o                       o<Esc>
nnoremap O                       O<Esc>
nnoremap à                       :

" remap esc
inoremap òò                      <Esc>

" foldings
vnoremap <space>                 zf
nnoremap <expr> <space>          foldclosed('.') != -1 ? 'zO' : 'zc'
" <c-space> seems to be special and not available,
" <c-@> instead do the job (it works as ctrl + space)
"nnoremap <expr> <C-space>            &foldlevel != 0 ? 'zM' :'zR'
nnoremap <expr> <C-@>            &foldlevel != 0 ? 'zM' :'zR'

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
" not use the following to not overwrite WORD jumping
"nnoremap <S-w>                   :q<CR>

" Move with ctrl in insert mode
" ACTHUNG: interfer with vim-mux-navigator. but it is not because in this you
" need to leave views always in normal mode
inoremap <C-h>                   <C-o>h
inoremap <C-j>                   <C-o>j
inoremap <C-k>                   <C-o>k
inoremap <C-l>                   <C-o>l

" Cut & paste stuffs
" delete till the end of line
inoremap <C-Del>                 <C-\><C-O>D
" yank till the end of line
nnoremap Y                       y$
" copy one line above
nnoremap _                       ggY``P
" toggle paste mode
set pastetoggle=<F3>

" visual mode blockwise indent
vnoremap >                       >gv
vnoremap <                       <gv

" Search for word under cursor with * or # in new window:
nnoremap <C-w>*                  <C-w>s*
nnoremap <C-w>#                  <C-w>s#

" Highlight text on the screen matching that under the cursor: Press Ctrl-k to
" start; each subsequent Ctrl-l matches one more character. Uses marks "x" and
" "y", and register "z".
noremap <M-k>                    mx
noremap <M-l>                    lmy"zy`x/<C-r>z<CR>`y

" -------
" PLUGINS:
" -------
" alias <C-/> ('/' as root)
nnoremap <silent> <C-_>          :NERDTreeToggle<CR>

" toggle comment in every mode
noremap  <silent> <C-d>          :call NERDComment(0,"toggle")<CR>
inoremap <silent> <C-d>          <C-o>:call NERDComment(0,"toggle")<CR>


