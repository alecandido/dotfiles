" ================
" Markdown submode
" ================
"
" it will be available only in markdown files

"call submode#enter_with('markdown', 'n', '', '<C-m>')


" Note: <C-c> will also get you out to the mode without this mapping.
" Note: <C-[> also behaves as <ESC>
" Note: doubling <ESC> safely allows for special keys (e.g.: <up>, <pageup>,
" ...)
call submode#leave_with('markdown', 'n', '', '<ESC><ESC>')
call submode#leave_with('markdown', 'n', '', 'ò')

" Map unused letters as in usual mode
" i.e.: map all the letters as usual and then overwrite
"
" normal mode
"for key in ['a','b','c','d','e','f','g','h','i','j','k','l','m',
"\           'n','o','p','q','r','s','t','u','v','w','x','y','z']
  "" maps lowercase, uppercase and <C-key>
  "call submode#map('markdown', 'n', '', key, key)
  "call submode#map('markdown', 'n', '', toupper(key), toupper(key))
  "call submode#map('markdown', 'n', '', '<C-' . key . '>', '<C-'.key . '>')
"endfor
 "visual mode
"for key in ['a','b','c','d','e','g','h','i','j','k','l','m',
"\           'n','o','p','q','r','s','t','u','v','w','x','y','z']
   "maps lowercase, uppercase and <C-key>
  "call submode#map('markdown', 'v', '', key, key)
  "call submode#map('markdown', 'v', '', toupper(key), toupper(key))
  "call submode#map('markdown', 'v', '', '<C-' . key . '>', '<C-'.key . '>')
"endfor

"call submode#map('markdown', 'n', '', 'f', ":echo '<,'>gq")
"call submode#map('markdown', 'n', '', 'f', "o")
