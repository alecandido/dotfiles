# List of plugins
set -g @plugin 'tmux-plugins/tpm'

set -g @plugin 'tmux-plugins/tmux-sensible'
# set -g @plugin 'CrispyConductor/tmux-copy-toolkit'
set -g @plugin 'tmux-plugins/tmux-open'

# vim integration
set -g @plugin 'christoomey/vim-tmux-navigator'

# fzf navigation
set -g @plugin 'sainnhe/tmux-fzf'

# git plugins
set -g @plugin 'kristijanhusak/tmux-simple-git-status'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.cache/tmux/plugins/tpm/tpm'
