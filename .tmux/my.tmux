set -g @open-S 'https://www.google.com/search?q='

# set another shortcut for `clear screen`
# issue: vim-tmux-navigator overwritten <C-l> for vim-like movements
# solution: <prefix> A-l
# not working with dwm
# new solution: <prefix> ò
bind ò send-keys 'C-l'
