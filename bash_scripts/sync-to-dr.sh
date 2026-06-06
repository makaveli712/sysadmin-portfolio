#!/bin/bash

#Offsite sync with bandwith limit | example backup server

rsync -avz --bwlimit=5000 --delete /data/ user@backup-server:/backup/data/
