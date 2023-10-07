#!/bin/bash

DATE=$(date +"%a %d %h %H:%M")
NETSTATE=$(cat /sys/class/net/wlan0/operstate)
BATCAP=$(cat /sys/class/power_supply/BAT0/capacity)
BATSTATUS=$(cat /sys/class/power_supply/BAT0/status)
IP=$(ip -json a show dev wlan0 | jq -r '.[0].addr_info.[0].local')

echo "NET: $NETSTATE ($IP) | BAT: $BATCAP ($BATSTATUS) | $DATE"
