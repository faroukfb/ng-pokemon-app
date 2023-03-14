pipeline {
    agent any
    environment {
        NODE_VERSION = '16.18.1'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/faroukfb/ng-pokemon-app.git']]])
            }
        }
       stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm audit fix --force'
                sh 'npm run build'
            }
        }
       
       
        stage('Deploy') {
            steps {
                echo "Deploying..."
            }
        }
    }
}
