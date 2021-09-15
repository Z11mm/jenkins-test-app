pipeline {
    agent any

    tools {nodejs "node"}

    stages {
        stage('Build') {
            steps {
                echo 'Building the application....'
                sh '''
                #!/bin/bash
                rm -rf *.tar.gz
                npm install
                tar czf node-$BUILD_NUMBER.tar.gz node_modules app.js package.json
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the application...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                sh '''
                #!/bin/bash
                cd /var/www/test
                tar xzf node-build.tar.gz
                npm install
                npm start
                '''
            }
        }
    }
}
