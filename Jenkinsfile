pipeline {
    agent any

    environment {
        IMAGE_NAME = 'java-app'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from source control
                checkout scm
            }
        }

        stage('Build Java') {
            steps {
                echo 'Compiling Java...'
                sh 'javac App.java'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage('Run Docker Image') {
            steps {
                echo 'Running Docker container...'
                sh "docker run --rm $IMAGE_NAME"
            }
        }
    }

    post {
        success {
            echo '✅ Build completed successfully!'
        }
        failure {
            echo '❌ Build failed.'
        }
    }
}
