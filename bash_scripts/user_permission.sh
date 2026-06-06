#!/bin/bash

while IFS=: read -r user pass; do
    useradd -m "$user" -s /bin/bash
    echo "$user:$pass" | chpasswd
    echo "User $user created."
done < users.txt