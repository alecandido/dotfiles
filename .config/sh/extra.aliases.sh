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
