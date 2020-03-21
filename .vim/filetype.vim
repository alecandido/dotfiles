" Detect filetype

augroup filetypedetect
au BufNewFile,BufRead *.txt			setf text
au BufNewFile,BufRead *.yml			setf yaml
augroup END
