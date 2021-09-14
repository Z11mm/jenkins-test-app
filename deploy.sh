#!/bin/bash

# ssh into dev server and create project dir
gcloud compute ssh --zone=us-central1-c app-server-dev < cd nodeapp
# get files from repo
git branch: 'main', credentialsId: '6fe779cf-ae29-433c-8619-399e980675b3', url: 'git@github.com:Z11mm/jenkins-test-app.git'
npm install --production
pm2 start app.js
exit
EOF