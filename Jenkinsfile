pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                echo 'Compiling Java program...'
                sh 'javac App.java'
            }
        }

        stage('Run') {
            steps {
                echo 'Running Java application...'
                sh 'java App'
            }
        }
    }

    post {
        success {
            echo '✅ Java application ran successfully.'
        }
        failure {
            echo '❌ Build or run failed.'
        }
    }
}
