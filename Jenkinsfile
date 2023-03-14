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
       stage('Install dependacy') {
            steps {
                sh 'npm install'
                sh 'npm audit fix --force'
                
            }
        }
         stage('build') {
            steps {
                
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
