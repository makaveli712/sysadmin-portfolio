#!/bin/bash


if [[ $EUID -ne 0 ]]; then
    echo "Error: This script must be run as root."
    exit 1
fi

SOURCE="/home"
DEST="/backup"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
FILENAME="backup_$TIMESTAMP.tar.gz"


mkdir -p "$DEST"

tar -czf "$DEST/$FILENAME" "$SOURCE"

echo "Backup completed: $DEST/$FILENAME"