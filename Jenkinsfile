pipeline {
    agent any
    environment {
        NODE_VERSION = '19.7.0'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/faroukfb/ng-pokemon-app.git']]])
            }
        }
        stage('Install Dependencies') {
            steps {
                nodejs(nodeJSInstallationName: 'NodeJS ${NODE_VERSION}', configId: 'nodejs-config')
                sh 'npm install'
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
