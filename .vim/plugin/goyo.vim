let g:goyo_width = 90

function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  if s:goio
    let s:original_colors_name = g:colors_name
    "colorscheme seoul256
    colorscheme apprentice
  endif
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  try
    let restore_colors_name = s:original_colors_name
  catch /E121/
    let restore_colors_name = g:default_colors_name
  endtry
  execute "colorscheme " . restore_colors_name
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

function s:Goio()
  let s:goio = 1
  Goyo
  let s:goio = 0
endfunction

command! Goio :call <SID>Goio()

noremap <F11> :Goio<CR>
