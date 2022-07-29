# -- general -------------------------------------------------------------------

#set -g default-terminal "st-256color" # colors!
#set -g default-terminal "kitty" # kitty compatibility
#set -g default-terminal "xterm-kitty" # try this if the previous one does not work
set -g default-terminal "tmux-256color" # colors!
set-option -g default-shell /bin/zsh
setw -g xterm-keys on
set -s escape-time 10                     # faster command sequences
set -sg repeat-time 600                   # increase repeat timeout
set -s focus-events on

#set -g prefix2 C-a                        # GNU-Screen compatible prefix
#bind C-a send-prefix -2

set -q -g status-utf8 on                  # expect UTF-8 (tmux < 2.2)
setw -q -g utf8 on

set -g history-limit 5000                 # boost history

# enable mouse events
setw -g mouse on

# retrieve selection while copying
set -g @yank_action 'copy-pipe-no-clear'

# -- display -------------------------------------------------------------------

set -g base-index 1           # start windows numbering at 1
setw -g pane-base-index 1     # make pane numbering consistent with windows

setw -g automatic-rename on   # rename window to reflect current program
set -g renumber-windows on    # renumber windows when a window is closed

set -g set-titles on          # set terminal title

set -g display-panes-time 800 # slightly longer pane indicators display time
set -g display-time 1000      # slightly longer status messages display time

set -g status-interval 10     # redraw status line every 10 seconds

# clear both screen and history
bind -n C-l send-keys C-l \; run 'sleep 0.1' \; clear-history

# activity
set -g monitor-activity on
set -g visual-activity off
