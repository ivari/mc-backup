#!/bin/bash

# Put in crontab:
# */5 * * * * bash /home/steve/minecraft/server/backup.sh >/dev/null

cd /home/steve/minecraft/server

git add competition*
git add plugins
git add *.json

git add .gitignore
git add backup.sh

git commit -m "backup state on $(date)"
git push

