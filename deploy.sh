#!/bin/bash

# ssh into dev server and create project dir
gcloud compute ssh --zone=us-central1-c app-server-dev < cd nodeapp
# get files from repo
git pull
npm install --production
pm2 start app.js
exit
EOF