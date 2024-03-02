pipeline {
    agent any
    
    stages {
        stage('Build Docker image') {
            steps {
                script {
                    docker.build('my-2048game:latest', '-f /path/to/Dockerfile .')
                }
            }
        }
        stage('Run Docker container') {
            steps {
                script {
                    docker.image('my-2048game:latest').run('-p 8080:8080')
                }
            }
        }
    }
}
