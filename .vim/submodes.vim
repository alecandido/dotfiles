let $VIM='$HOME/.vim/'

" A message will appear in the message line when you're in a submode
" and stay there until the mode has existed.
let g:submode_always_show_submode = 1
let g:submode_timeoutlen = 10000
" Note: doubling <ESC> safely allows for special keys (e.g.: <up>, <pageup>,
" ...)
let g:submode_keyseqs_to_leave = ['<ESC><ESC>']

:source $VIM/submodes/windows.vim
:source $VIM/submodes/undo-redo.vim


