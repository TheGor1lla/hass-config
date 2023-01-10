#!/bin/bash

GIT_SSH_COMMAND="ssh -i /config/.ssh/id_ed25519"

cd /config

git add .

TODAY=$(date +"%Y-%m-%d")

git commit -m "[${TODAY}] scheduled backup"
yes yes | GIT_SSH_COMMAND="ssh -i /config/.ssh/id_ed25519" git push origin main
exit
