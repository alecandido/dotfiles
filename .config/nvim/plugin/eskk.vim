" https://vi.stackexchange.com/questions/8733/can-i-write-japanese-skk-text-in-vim
let g:skk_initial_mode = 'hira'
let g:skk_script = '~/.vim/plugged/eskk.vim/plugin/eskk.vim'

set completeopt=menuone,preview
set thesaurus=~/.vim/skk-jisyo-utf-8.l

function! ToogleMode()
  if 'hira' ==# g:skk_initial_mode
    let g:skk_initial_mode = 'kata'
  else
    let g:skk_initial_mode = 'hira'
  endif
  execute "source " . g:skk_script
endfunction
