" vim-cutlass
nnoremap x d
xnoremap x d

nnoremap xx dd
nnoremap X D

noremap <C-x> d
nnoremap <C-x> x

" vim-subversive
" s for substitute
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

" vim-yoink
let g:yoinkIncludeDeleteOperations = 1

nmap <c-n> <plug>(YoinkPostPasteSwapBack)
nmap <c-p> <plug>(YoinkPostPasteSwapForward)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" coc-yank
nnoremap <silent> <Leader>y  :<C-u>CocList -A --normal yank<cr>
