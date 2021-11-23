" ========
" My remap
" ========

" Movements and general
" ---------------------
noremap H                        ^
noremap L                        $
noremap 0                        H
noremap ^                        0
noremap $                        L

" Common shortcuts
" ----------------

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
noremap  <silent> <C-w>          :bd<CR>
vnoremap <silent> <C-w>          <C-c>:bd<CR>
inoremap <silent> <C-w>          <C-o>:bd<CR>
noremap  <silent> <C-a>          ggVG<CR>
vnoremap <silent> <C-a>          <C-c>ggVG<CR>
inoremap <silent> <C-a>          <Esc>ggVG<CR>


" Normal mode
" -----------
nnoremap o                       o<Esc>
nnoremap O                       O<Esc>
nnoremap <silent> §              :set list!<CR>

" Cut & paste stuffs
" yank till the end of line
nnoremap Y                       y$

" reload (source) vimrc
nnoremap <silent> <leader>sv     :call vimrc#SourceVimrc()<CR>

" move down
noremap <C-f>                    :normal! <C-D><CR>

" Map increment/decrement
nnoremap <A-a>                   <C-a>
nnoremap <A-x>                   <C-x>

" Insert mode
" -----------
inoremap <C-u>                   <Esc>gUawa

" Visual mode
" -----------

" visual mode blockwise indent
vnoremap >                       >gv
vnoremap <                       <gv

" foldings
nnoremap <expr> zf               foldclosed('.') != -1 ? 'zO' : 'zc'
" <C-space> seems to be special and not available,
" <C-@> instead do the job (it works as ctrl + space)
"nnoremap <expr> <C-@>            &foldlevel != 0 ? 'zM' :'zR'
nnoremap <expr> <silent> zl      ":set foldenable foldlevel=" . input("Fold Level: ") . "\<CR>"

" Navigation
" ----------

" tabs
noremap <silent> <C-PageUp> :tabprevious<CR>
noremap <silent> <C-PageDown> :tabnext<CR>
noremap <silent> <M-PageUp> :tabmove +1<CR>
noremap <silent> <M-PageDown> :tabmove -1<CR>
noremap <silent> <C-t> :VimFilerTab<CR>

" buffers
noremap <silent> <S-PageUp> :bprevious<CR>
noremap <silent> <S-PageDown> :bnext<CR>

" Function keys
" -------------

" toggle paste mode
set pastetoggle=<F3>

" <F5> is reserved for open "undotree"

" open vimfiler in split
noremap <silent> <F6> :VimFilerSplit<CR>

" <F7> is reserved for open "local index" (like markdown)

" toggle tagbar
noremap <silent> <F8> :Vista!!<CR>

" <F9> is reserved for "running" (like in Python)

" <F11> is "Goio" like
