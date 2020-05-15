" Drop Syntastic settings at the end of the config file "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_flake8_args='--ignore=E302,W504'
"let g:syntastic_error_symbol = 'Put a symbol or an emoji you like'
"let g:syntastic_warning_symbol = 'Put a symbol or an emoji you like'

"function! SyntasticCheckHook(errors)
"    if !empty(a:errors)
"        let g:syntastic_loc_list_height = min([len(a:errors), 5])
"    endif
"endfunction


let g:syntastic_rst_checkers = ['sphinx']

let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": ["rst"],
        \ "passive_filetypes": ["python"] }
