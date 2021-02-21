" BUFFERS:
" -------
" submode to deal with buffers commands
"
" use <C-u>, because <C-b> is the tmux prefix
" (on the other hand <C-u> is the partner of <C-d>, that is already
" overwritten for toggling comments)

"call submode#enter_with('buffer', 'n', '', '<C-u>')

" Note: <C-c> will also get you out to the mode without this mapping.
" Note: <C-[> also behaves as <ESC>
" Note: doubling <ESC> safely allows for special keys (e.g.: <up>, <pageup>,
" ...)
call submode#leave_with('buffer', 'n', '', '<ESC><ESC>')
call submode#leave_with('buffer', 'n', '', 'ò')

" I don't like <C-w>q, <C-w>c won't exit Vim when it's the last buffer.
call submode#map('buffer', 'n', '', 'p', ':bp<cr>')
call submode#map('buffer', 'n', '', 'n', ':bn<cr>')
call submode#map('buffer', 'n', '', 'l', ':ls<cr>')
