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
        stage('Install Dependencies') {
            steps {
                nodejs('nodejs'){
                    sh 'npm install'
                }
                
                
            }
        }
        stage('fix') {
            steps {
                sh 'npm audit fix --force'
            }
        }
        stage('Build') {
            steps {
                sh 'ng  build --prod'
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying..."
            }
        }
    }
}
