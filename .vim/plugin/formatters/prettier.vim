"let g:prettier#autoformat = 1
"let g:prettier#autoformat_require_pragma = 0

" Max line length that prettier will wrap on: a number or 'auto' (use
" textwidth).
" default: 'auto'
let g:prettier#config#print_width = 'auto'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = 'auto'

" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

augroup MyPrettier
    autocmd!
    autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.toml,*.xml,*.html PrettierAsync
augroup end
