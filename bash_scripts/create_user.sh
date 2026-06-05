#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "Run this script as root"
    exit 1
fi

read -p "Enter username: " USERNAME

if id "$USERNAME" &>/dev/null; then
    echo "User already exists"
    exit 1
fi
read -p "Enter full name: " FULLNAME


useradd -m -c "$FULLNAME" "$USERNAME"
passwd "$USERNAME"

echo "User $USERNAME created successfully."