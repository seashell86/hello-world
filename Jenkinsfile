pipeline {
    agent any

    stages {
        stage('Build and Run') {
            steps {
                sh 'docker-compose up --build --remove-orphans -d'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}