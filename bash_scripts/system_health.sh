#!/bin/bash

echo "Disk Usage"

df -h | grep -vE "^Filesystem|tmpfs|udev"

echo

echo "Memory"
free -m | awk 'NR==2{printf "Used: %s MB, Free: %s MB\n", $3, $4}'

echo

echo "CPU Load:"
uptime

echo

USAGE=$(df / | awk 'END{print $5}' | sed 's/%//')
if [ "$USAGE" -gt 80 ]; then
    echo "WARNING: / partition ${USAGE}% full!" | mail -s "Disk Alert" admin@exmaple.com
fi

