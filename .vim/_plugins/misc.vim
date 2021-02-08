" Isolated options that are not enough to have their own folder and also not
" related to a specific language.

let g:tex_flavor = "latex"

" toggle comment in every mode
noremap  <silent> <C-d>          :call NERDComment(0,"toggle")<CR>
inoremap <silent> <C-d>          <C-o>:call NERDComment(0,"toggle")<CR>
