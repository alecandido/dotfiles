#!/usr/bin/env sh
# Script for cleaning old sessions

# launched with crontab
# once a day make it clean
#
# sort tmux-* and tail (or head)
# xargs into rm
# print a log that has run (append to a log file in this dir)

fdfind | grep tmux_resurrect | sort | head -n -2 | xargs rm
