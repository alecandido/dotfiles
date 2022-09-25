# List of plugins
set -g @plugin 'tmux-plugins/tpm'

set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-logging'
set -g @plugin 'tmux-plugins/tmux-copycat'
set -g @plugin 'tmux-plugins/tmux-open'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-sidebar'
#set -g @plugin 'tmux-plugins/tmux-battery' # currently oh-my-tmux is better
set -g @plugin 'tmux-plugins/tmux-urlview' # issues when run `tmux source-file ~/.tmux.conf`

# vim integration
set -g @plugin 'christoomey/vim-tmux-navigator'

# fzf navigation
set -g @plugin 'sainnhe/tmux-fzf'

# sessions plugin
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @resurrect-strategy-vim 'session'
# set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @plugin 'tmux-plugins/tmux-sessionist'

# git plugins
set -g @plugin 'kristijanhusak/tmux-simple-git-status'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'
