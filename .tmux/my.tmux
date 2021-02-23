set -g @open-S 'https://www.google.com/search?q='

# set another shortcut for `clear screen`
# issue: vim-tmux-navigator overwritten <C-l> for vim-like movements
# solution: <prefix> A-l
# not working with dwm - now yes (using windows for Mod)
bind M-l send-keys 'C-l'
# new solution: <prefix> ò
# bind ò send-keys 'C-l'


# Set new panes to open in current directory
bind c new-window -c "#{pane_current_path}"
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
