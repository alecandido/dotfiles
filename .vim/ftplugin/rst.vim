" =========================
" ReStructuredText settings
" =========================
"
" General settings

" set grammar checker with language locale
" if needed set language with, e.g., ":set spelllang=it"
setlocal spell
" set max textwidth
setlocal textwidth=80
" autowrap text with textwidth
setlocal formatoptions+=t

setlocal expandtab tabstop=3 shiftwidth=3 softtabstop=3


" mappings
" --------
"
"  <C-r> is "control-restructuredtext"


" SOURCE:
" ------
" source other files

" if repeated actions not needed avoid submode, just use consistently the
" prefix <C-r>
":source $VIM/submodes/rst.vim

" -------
" PLUGINS:
" -------
"
"  Settings
"  --------

" Run instant rst only on ...
let g:instant_rst_slow = 1

" Plugin mappings
" ---------------
"  <C-e> already used by riv.vim
"  <C-e>s# for title of depth #
