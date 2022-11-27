# ╔════════════╗
# ║ My aliases ║
# ╚════════════╝
#
# extra aliases working on most shells
# mainly functions

# ┌────────────────┐
# │ misc functions │
# └────────────────┘

# launch app
launch() {
  nohup $1 >/dev/null 2>&1 &
}

# weather
weather() {
  # defaults
  city="Milan"
  format=""

  while getopts ":c:o" opt; do
    case ${opt} in
    c) # select city
      city=$OPTARG
      ;;
    o) # format one line
      format="?format=3"
      ;;
    \?)
      echo "Usage: cmd [-c CITY] [-o]"
      ;;
    esac
  done
  curl "wttr.in/${city}${format}"
}

# Show term stuffs
keys() {
  # from arch wiki
  xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
}

showcolors() {
  # select colored element
  if [[ ! -z $1 && "$1" == "-b" ]]; then
    c_el=48 # colored background
  else
    c_el=38 # colored text
  fi

  echo "\\\033[${c_el};5;#m"
  echo ''

  for i in {0..31}; do
    for j in {0..7}; do
      n=$((i * 8 + j))
      padded="$n   "
      echo -n "\033[${c_el};5;${n}m ${padded:0:3}   Ciao  \033[0m\033[38;5;255m │  "
    done
    echo " "
  done

  echo ''
  echo 'reset with:'
  echo "\\\033[0m"
}

# older funcs
pdf_words() {
  if [ ! -z "$2" ] && ([ "$2" = "--char" ] || [ "$2" = "-c" ]); then
    pdftotext $1 - | wc -c
  else
    pdftotext $1 - | wc -w
  fi
}

pdf_to_gray() {
  if [ -f "$1" ] && [ "${1#*.}" = "pdf" ]; then
    if [ -z "$2" ]; then
      OUT="${1%.pdf}_gs.pdf"
    else
      OUT="$2"
    fi
    gs -o $OUT -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 $1
  else
    echo "Invalid first argument"
  fi
}

img_to_gray() {
  exts=("png" "jpg")
  EXT="?"
  TEST="${1#*.}"
  for e in "${exts[@]}"; do
    if [ "$e" = "$TEST" ]; then
      EXT="$TEST"
    fi
  done
  if [ -f "$1" ] && [ "$EXT" != "?" ]; then
    if [ -z "$2" ]; then
      OUT="${1%.${EXT}}_gs.${EXT}"
    else
      OUT="$2"
    fi
    #echo "$OUT"
    convert $1 -colorspace Gray $OUT
  else
    echo "Invalid first argument"
  fi
}

# rclone "aliases"
rclone() {
  x="$@"
  if [[ ${x:0:3} == "ls " ]] && [[ ${x:3:11} != "--max-depth" ]]; then
    command rclone ls --max-depth 1 ${x:3}
  elif [[ ${x:0:4} == "lsl " ]] && [[ ${x:3:11} != "--max-depth" ]]; then
    command rclone lsl --max-depth 1
  else
    command rclone "$@"
  fi
}

# get infos about a window
win-info() {
  xprop | awk '
  /^WM_CLASS/{sub(/.* =/, "instance:"); sub(/,/, "\nclass:"); print}
  /^WM_NAME/{sub(/.* =/, "title:"); print}
  '
}

# stopwatch and countdown - thanks https://superuser.com/a/611582/1278707
countdown() {
  start="$(($(date +%s) + $1))000000000"
  while [ "$start" -ge $(date +%s%N) ]; do
    time=$(($start - $(date +%s%N)))
    nano=$(($time % 1000000000))
    seconds=$(($time / 1000000000))
    days=$(($seconds / 86400))
    printf '%s day(s) and %s\r' "$days" "$(date -u -d "@$seconds" +%H:%M:%S).${nano::2}"
    sleep 0.1
  done
}

stopwatch() {
  start=$(date +%s%N)
  while true; do
    time=$(($(date +%s%N) - $start))
    nano=$(($time % 1000000000))
    seconds=$(($time / 1000000000))
    days=$(($seconds / 86400))
    printf '%s day(s) and %s\r' "$days" "$(date -u -d "@$seconds" +%H:%M:%S).${nano::2}"
    sleep 0.1
  done
}
