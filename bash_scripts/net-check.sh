#!/bin/bash

ping -c 1 8.8.8.8 > /dev/null && echo "Internet up" || echo "Internet down"

nc -zv db-server 3306 &> /dev/null && echo "DB port open" || echo "DB port closed"

#exmaple.com for demonistration
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://example.com)
[ "$HTTP_CODE" -eq 200 ] && echo "Web OK" || echo "Web returned $HTTP_CODE"
