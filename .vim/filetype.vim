" Detect filetype

augroup filetypedetect
au BufNewFile,BufRead *.txt			setf text
augroup END
