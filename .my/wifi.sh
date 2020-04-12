#!/bin/sh
wpa_supplicant -i wlp3s0 -d wext -B -c /home/alessandro/.my/wpa.conf > /dev/null
dhclient -r /dev/null
dhclient wlp3s0
# ping 8.8.8.8
