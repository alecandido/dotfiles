setl foldmethod=indent
setl nowrap

setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal smarttab

set formatprg=toml-fmt
command! FormatToml normal! ggVGgq

autocmd BufWritePre * execute ':silent FormatToml'
