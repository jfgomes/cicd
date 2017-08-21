pipeline {
    agent any 
    def branches = sh(returnStdout: true, script: "git branch --contains ${commitId}")
    
    stages {
        stage('Buildx') { 
            steps { 
                sh 'ls -la' 
            }
        }
        stage('Testx'){
            steps {
                sh 'cd phpunit && ls -l'
                branches
                // sh 'printenv'
                //${env.GIT_BRANCH}
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
