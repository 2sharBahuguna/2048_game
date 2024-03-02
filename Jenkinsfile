pipeline {
    agent any
    
    stages {
        stage('Build Docker image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build('my-2048game:latest', '-f /path/to/Dockerfile .')
                }
            }
        }
        stage('Run Docker container') {
            steps {
                script {
                    // Run the Docker container
                    docker.image('my-2048game:latest').run('-p 8080:8080')
                }
            }
        }
    }
}
