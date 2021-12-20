# ╔════════════╗
# ║ My aliases ║
# ╚════════════╝
#
# utility aliases working on most shells

# ┌─────────┐
# │ replace │
# └─────────┘

alias ls='exa'
alias rm='rm -I'
alias sudo='sudo '

alias wget='wget --hsts-file $XDG_CACHE_HOME/wget-hsts'

# ┌────────┐
# │ system │
# └────────┘

alias mydev='mount | grep -E "/dev/sd\w[[:digit:]]*"'
alias dim-screen='xset dpms force off'
alias current-term='ps -p $(ps -p $$ -o ppid=) o args='

# ┌──────────────┐
# │ sh utilities │
# └──────────────┘

alias paste-image='xclip -selection clipboard -t image/png -o >'
alias paste-text='xclip -selection clipboard -o >'
alias copy-file='xclip -selection clipboard'

alias replace='rsync -a'

alias lspy="exa -T --ignore-glob='__pycache__'"

# ┌──────────────┐
# │ environments │
# └──────────────┘
aenv() {
  env_path=$(find-env-activator $@)
  if [ -f $env_path ]; then
    . $env_path
  elif [ $env_path = "None" ]; then
    echo "No environment found"
  else
    echo $env_path
  fi
}
