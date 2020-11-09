setl foldmethod=indent
setl nowrap

setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal smarttab

autocmd BufWritePre * execute ':silent Prettier'
