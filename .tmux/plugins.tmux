# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-battery'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @plugin 'tmux-plugins/tmux-logging'
set -g @plugin 'tmux-plugins/tmux-copycat' 
#set -g @plugin 'tmux-plugins/tmux-urlview' # issues when run `tmux source-file ~/.tmux.conf`
set -g @plugin 'tmux-plugins/tmux-open'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-sessionist'
set -g @plugin 'tmux-plugins/tmux-sidebar'

# git plugins
set -g @plugin 'kristijanhusak/tmux-simple-git-status'
#set -g @plugin 'arl/gitmux'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'
