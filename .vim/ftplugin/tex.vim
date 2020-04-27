setlocal spell

"nnoremap <C-S-F6> :w <bar> !pdflatex %:t<CR>

" ======
" vimtex
" ======
" mapping
nmap  <silent> <C-i>              <plug>(vimtex-toc-toggle)


" close braces at the end
let g:vimtex_complete_close_braces = 1

:execute "normal \<plug>(vimtex-toc-open)"

" syntastic
"let g:syntastic_quiet_messages = { 'regex': 'possible unwanted space at "{"' }
