" Shell settings

"autocmd Filetype shell
setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" -------
" PLUGINS:
" -------
"
"  Settings
"  --------

" Autorun Black
autocmd BufWritePre * execute ':silent Shfmt'
