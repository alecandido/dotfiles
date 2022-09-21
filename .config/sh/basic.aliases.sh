# ╔═════════════╗
# ║ Basic Combo ║
# ╚═════════════╝
#
# combinations of built-in commands and simple, always available, other
# commands

alias dfree='df -h | grep -v tmpfs'

htime() {
  if [ "$#" -ne 2 ]; then
    echo "usage: htime <which> <file>"
  else
    date -d @$(stat $2 | grep $1 | tr -s ' ' | cut -d' ' -f2)
  fi
}

# ┌──────┐
# │ less │
# └──────┘
# made with slightly less basic commands

follow() {
  tail -f $1 | bat --paging=never -l log
}
