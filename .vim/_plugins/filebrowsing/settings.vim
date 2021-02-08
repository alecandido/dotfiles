" NERDTree settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeHijackNetrw=1

" map to Alt+w, with a trick for terminal Vim
if has('nvim') != 1
    execute "set <M-w>=\ew"
endif
nnoremap <silent> <M-w>          :NERDTreeToggle<CR>

augroup NERDTree
    autocmd!
    autocmd User StartifyReady execute "NERDTree"
augroup END

" CtrlSpace

let g:CtrlSpaceDefaultMappingKey = "<C-space> "

" fzf.vim
noremap <silent> <C-p>           :Files<CR>
