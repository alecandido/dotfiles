let g:NERDSpaceDelims = 1

" toggle comment in every mode
noremap  <silent> <C-d>          :call NERDComment(0,"toggle")<CR>
inoremap <silent> <C-d>          <C-o>:call NERDComment(0,"toggle")<CR>
