#!/bin/bash

echo "Hostname: $(hostname)"
echo
echo "OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)"
echo
echo "Kernel: $(uname -r)"
echo
echo "CPU: $(lscpu | grep 'Model name' | cut -d: -f2)"
echo
echo "Memory: $(free -h | awk '/^Mem:/{print $2}')"
echo
echo "Disk: $(lsblk -d -o NAME,SIZE | grep -v 'NAME')"
echo
echo "Open ports: $(ss -tuln | grep LISTEN)"