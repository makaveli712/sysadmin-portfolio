#!/bin/bash

#Demonistration
find /var/log/example_app -name "*.log" -mtime +2 -exec gzip {} \;
find /var/log/example_app -name "*.log.gz" -mtime +30 -delete