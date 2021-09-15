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
                tar czf node-build.tar.gz node_modules app.js package.json
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
                sshPublisher(publishers: [sshPublisherDesc(configName: 'app-server-dev', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '''mv node-build.tar.gz /var/www/test
                    cd /var/www/test
                    tar xzf node-build.tar.gz''', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '*.tar.gz')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)])        
            }
        }
    }
}