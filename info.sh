#!/bin/bash

DATE=$(date +"%a %d %h %H:%M")
NETSTATE=$(cat /sys/class/net/enp5s0/operstate)
BATCAP=$(cat /sys/class/power_supply/BAT0/capacity)
BATSTATUS=$(cat /sys/class/power_supply/BAT0/status)
IP=$(ip -json a show dev enp5s0 | jq -r '.[0].addr_info.[0].local')
KB=$(xkb-switch)

echo "NET: $NETSTATE ($IP) | KB: $KB | $DATE"
