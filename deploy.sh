#!/bin/bash

# ssh into dev server and create project dir
gcloud compute ssh --zone=us-central1-c app-server-dev 

git clone 'https://github.com/Z11mm/jenkins-test-app.git'

cd jenkins-test-app

npm install --production

npm start
exit