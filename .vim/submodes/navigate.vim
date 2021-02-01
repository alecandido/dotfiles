" We're taking over the default <C-w> setting. Don't worry we'll do
" our best to put back the default functionality.
" 
" Instead I'm going to break compatibility and use Ctrl+Navigate
call submode#enter_with('navigate', 'n', '', '<C-n>')

" Note: <C-c> will also get you out to the mode without this mapping.
" Note: <C-[> also behaves as <ESC>
" Note: doubling <ESC> safely allows for special keys (e.g.: <up>, <pageup>,
" ...)
call submode#leave_with('navigate', 'n', '', '<ESC>')
call submode#leave_with('navigate', 'n', '', 'ò')

" Go through every letter
for key in ['a','b','c','d','e','f','g','h','i','j','k','l','m',
\           'n','o','p','q','r','s','t','u','v','w','x','y','z']
  " maps lowercase, uppercase and <C-key>
  call submode#map('navigate', 'n', '', key, '<C-w>' . key)
  call submode#map('navigate', 'n', '', toupper(key), '<C-w>' . toupper(key))
  call submode#map('navigate', 'n', '', '<C-' . key . '>', '<C-w>' . '<C-'.key . '>')
endfor
" Go through symbols. Sadly, '|', not supported in submode plugin.
for key in ['=','_','+','-','<','>']
  call submode#map('navigate', 'n', '', key, '<C-w>' . key)
endfor

" I don't like <C-w>q, <C-w>c won't exit Vim when it's the last window.
call submode#map('navigate', 'n', '', 'q', '<C-w>c')
call submode#map('navigate', 'n', '', '<C-q>', '<C-w>c')

" <lowercase-pipe> sets the width to 80 columns, pipe (<S-\>) by default
" maximizes the width.
call submode#map('navigate', 'n', '', '\', ':vertical resize 80<CR>')

" Resize faster
call submode#map('navigate', 'n', '', '+', '3<C-w>+')
call submode#map('navigate', 'n', '', '-', '3<C-w>-')
call submode#map('navigate', 'n', '', '<', '10<C-w><')
call submode#map('navigate', 'n', '', '>', '10<C-w>>')

" explore filesystem
call submode#map('navigate', 'n', 's', 'x', ':vsplit<cr>:Explore<cr>')
call submode#map('navigate', 'n', 's', '<S-x>', ':split<cr>:Explore<cr>')

" ------
" TABS:
" ------
"
" Open stuffs
call submode#map('navigate', 'n', 's', 'e', ':tabe<cr>')
call submode#map('navigate', 'n', 's', '<C-x>', ':Texplore<cr>')

" Move in tabs with arrows (instead of split panes, for those use hjkl)
call submode#map('navigate', 'n', 's', '<left>', ':tabp<cr>')
call submode#map('navigate', 'n', 's', '<right>', ':tabn<cr>')
call submode#map('navigate', 'n', 's', '<up>', ':tabp<cr>')
call submode#map('navigate', 'n', 's', '<down>', ':tabn<cr>')
" to the first, to the last
call submode#map('navigate', 'n', 's', '<pageup>', ':tabr<cr>')
call submode#map('navigate', 'n', 's', '<pagedown>', ':tabl<cr>')
" sort tabs
call submode#map('navigate', 'n', 's', '<S-left>', ':tabm -1<cr>')
call submode#map('navigate', 'n', 's', '<S-right>', ':tabm +1<cr>')
call submode#map('navigate', 'n', 's', '<S-up>', ':tabm -1<cr>')
call submode#map('navigate', 'n', 's', '<S-down>', ':tabm +1<cr>')
