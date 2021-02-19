" COLORSCHEME: === Choose the color scheme ===

" -- colorscheme: nord --
" override: https://www.nordtheme.com/docs/ports/vim/customization
augroup nord-theme-overrides
    autocmd!
    " Set LineNr colour
    "autocmd ColorScheme nord highlight LineNr ctermfg=242

    "Use 'nord7' as foreground color for Vim comment titl79es.
    "autocmd ColorScheme nord highlight Comment ctermfg=243

    autocmd ColorScheme nord highlight Visual cterm=reverse
    "autocmd ColorScheme nord highlight Visual ctermfg=23 ctermbg=255
    autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END

" configure: https://www.nordtheme.com/docs/ports/vim/configuration
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1

colorscheme nord

" ================================

" AIRLINE: === Airline ===


let g:airline#extensions#tmuxline#enabled = 0

let g:airline_powerline_fonts = 1
set laststatus=2

set t_Co=256

" =================
