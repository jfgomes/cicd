pipeline {
    agent any 

    stages {
        stage('Buildx') { 
            steps { 
                sh 'ls -l' 
            }
        }
        stage('Testx'){
            steps {
                sh 'cd phpunit && ls -l'
                junit 'reports/**/*.xml' 
            }
        }
        stage('Deployx') {
            steps {
                sh 'top'
            }
        }
    }
}
