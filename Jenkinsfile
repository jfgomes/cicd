pipeline {
    agent any 

    stages {
        stage('Buildx') { 
            steps { 
                sh 'ls -la' 
            }
        }
        stage('Testx'){
            steps {
                sh 'cd phpunit && ls -l'
                ${env.GIT_BRANCH}
                //sh 'echo $GIT_BRANCH'
                //junit 'reports/**/*.xml' 
            }
        }
        stage('Deployx') {
            steps {
                sh 'ls -la'
            }
        }
    }
}
