#!/usr/bin/env sh
# Script for cleaning old sessions

# launched with anacron 
# once a day make it clean

# anacron scheduling:
# 1       10      tmux.clean      /home/alessandro/.tmux/resurrect/clean.sh

cd /home/alessandro/.tmux/resurrect

fd | grep tmux_resurrect | sort | head -n -2 | xargs rm 2> /dev/null
