# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
# sometimes I also use 'ls' (i.e. 'exa') for navigation
zstyle ':fzf-tab:complete:(cd|ls|exa):*' fzf-preview 'exa -1 --color=always $realpath'
# zstyle ':fzf-tab:complete:(cd|ls|exa):*' popup-pad 30 0
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

# zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# give a preview of commandline arguments when completing `kill/ps`
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview \
  '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap

# tmux preview: requires tmux 3.2
# zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
