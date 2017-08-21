pipeline {
    agent any 

    stages {
        stage('Build') { 
            steps { 
                sh 'ls -l' 
            }
        }
        stage('Test'){
            steps {
                sh 'cd phpunit && ls -l'
                junit 'reports/**/*.xml' 
            }
        }
        stage('Deploy') {
            steps {
                sh 'top'
            }
        }
    }
}
