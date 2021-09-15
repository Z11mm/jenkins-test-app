pipeline {
    agent any

    tools {nodejs "node"}

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh '''
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
                echo 'Deploying application...'
            }
        }
    }
}
