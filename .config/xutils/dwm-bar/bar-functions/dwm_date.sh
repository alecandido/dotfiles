#!/bin/sh

# A dwm_bar function that shows the current date and time
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"
dwm_date () {
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        #printf "📆 %s" "$(date -u +'%a, %d %b %Y | %H:%M %P')"
        printf "$(date +'%a, %d %b %Y - %k:%M %P')"
    else
        printf "DAT %s" "$(date +'%a, %d %b %Y - %k:%M %P')"
    fi
    printf "%s\n" "$SEP2"
}

#dwm_date
