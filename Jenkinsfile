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
                
                
            }
        }
         stage('build') {
            steps {
                
                sh 'npm run build'
               // sh 'ng serve'
            }
        }
        
         stage('Docker') {
            steps {
                
                sh 'sudo docker build -t faroukbouhassine/ng-pokemon .'
                sh 'sudo docker push faroukbouhassine/ng-pokemon '
            }
        }
       
       
        stage('Deploy') {
            steps {
                echo "Deploying..."
            }
        }
    }
}
