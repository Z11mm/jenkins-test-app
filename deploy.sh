#!/bin/bash

# ssh into dev server and create project dir
gcloud compute ssh --zone=us-central1-c app-server-dev 
cd nodeapp
# get files from repo
git clone 'git@github.com:Z11mm/jenkins-test-app.git'
npm install --production
npm start
exit