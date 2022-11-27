# ╔═════════════════╗
# ║ My bash aliases ║
# ╚═════════════════╝

alias zshrc='source $ZSH_DIR/zshrc'

# ┌──────────────┐
# │ sh utilities │
# └──────────────┘

# override oh my zsh
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'

alias help="run-help"

# ┌───────────┐
# │ functions │
# └───────────┘

function wake() {
  local config_file="$XDG_CONFIG_HOME/.wakeonlan/$1"
  if [[ ! -f "$config_file" ]]; then
    echo "ERROR: There is no configuration file at \"$config_file\"."
    return 1
  fi

  if ((!$ + commands[wakeonlan])); then
    echo "ERROR: Can't find \"wakeonlan\".  Are you sure it's installed?"
    return 1
  fi

  wakeonlan -f "$config_file"
}

# _arguments "1:device to wake:_files -W '$XDG_CONFIG_HOME/.wakeonlan'" && return 0

eval "$(broot --print-shell-function zsh)"

# ┌─────────┐
# │ unalias │
# └─────────┘
