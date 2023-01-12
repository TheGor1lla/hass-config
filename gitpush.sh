#!/bin/bash

echo "Starting daily backup..."

GIT_SSH_COMMAND="ssh -i /config/.ssh/id_ed25519"

cd /config

git add .

TODAY=$(date +"%Y-%m-%d")

git commit -m "[${TODAY}] scheduled backup"
GIT_SSH_COMMAND="ssh -i /config/.ssh/id_ed25519 -o UserKnownHostsFile=/config/.ssh/known_hosts" git push origin main


exit
