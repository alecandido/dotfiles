setl foldmethod=indent
setl nowrap

setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal smarttab

autocmd BufWritePre * execute ':silent Prettier'
