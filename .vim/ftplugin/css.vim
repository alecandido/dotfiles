" CSS settings

"autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2


autocmd BufWritePre * execute ':silent Prettier'
