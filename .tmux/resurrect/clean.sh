#!/usr/bin/env sh
# Script for cleaning old sessions

# launched with crontab
# once a day make it clean

cd ~/.tmux/resurrect

if [ ! -f last_clean ]; then
  touch last_clean
fi

if [ ! -z "$(date +%F | diff last_clean -)" ]; then
  fdfind | grep tmux_resurrect | sort | head -n -2 | xargs rm 2> /dev/null
  date +%F > last_clean
fi
