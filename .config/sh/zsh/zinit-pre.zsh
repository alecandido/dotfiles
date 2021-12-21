# fzf

export FZF_COMPLETION_TRIGGER=''
#bindkey '^\t' fzf-completion
#bindkey '^I' $fzf_default_completion

# hstr

export HISTFILE=$XDG_CACHE_HOME/zsh/history # ensure history file visibility
export HSTR_CONFIG=hicolor         # get more colors
bindkey -s "\C-r" "\eqhstr\n"      # bind hstr to Ctrl-r (for Vi mode check doc, experiment with --)
