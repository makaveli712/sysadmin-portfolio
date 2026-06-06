#!/bin/bash


LOCKFILE="/tmp/myjob.lock"
LOGFILE="/var/log/myjob.log"

if [ -e "$LOCKFILE" ]; then
    echo "Job already running. Exiting." | tee -a "$LOGFILE"
    exit 1
fi

trap 'rm -f "$LOCKFILE"' EXIT
touch "$LOCKFILE"

echo "Job started at $(date)" >> $LOGFILE
echo "Job finished at $(date)" >> $LOGFILE