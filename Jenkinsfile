pipeline {
    agent any

    tools {nodejs "node"}

    environment {
        CI = 'true'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
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
                sh './deploy.sh'
            }
        }
    }
}
