let g:NERDSpaceDelims = 1

" toggle comment in every mode
noremap  <silent> <C-d>          :call nerdcommenter#Comment(0,"toggle")<CR>
inoremap <silent> <C-d>          <C-o>:call nerdcommenter#Comment(0,"toggle")<CR>
