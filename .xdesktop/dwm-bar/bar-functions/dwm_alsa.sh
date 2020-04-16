#!/bin/sh

# A dwm_bar function to show the master volume of ALSA
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: alsa-utils

dwm_alsa () {
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
    MUTE=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)\].*/\1/")

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$VOL" -eq 0 ]; then
            printf "🔇"
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            if [ "$MUTE" = "off" ]; then
              printf "🔇 "
            else
              printf "🔈 "
            fi
            printf " %s%%" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            if [ "$MUTE" = "off" ]; then
              printf "🔇 "
            else
              printf "🔉 "
            fi
            printf "%s%%" "$VOL"
        else
            if [ "$MUTE" = "off" ]; then
              printf "🔇 "
            else
              printf "🔊 "
            fi
            printf "%s%%" "$VOL"
        fi
    else
        if [ "$VOL" -eq 0 ]; then
            printf "MUTE"
        else
          if [ "$MUTE" = "off" ]; then
            printf "MUTE "
          else
            printf "VOL "
          fi

          if [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
              printf "%s%%" "$VOL"
          elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
              printf "%s%%" "$VOL"
          else
              printf "%s%%" "$VOL"
          fi
        fi
    fi
    printf "%s\n" "$SEP2"
}

#dwm_alsa
