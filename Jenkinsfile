pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/<YOUR_GITHUB_USERNAME>/simple-devops-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("yourdockerhubusername/devops-flask:${BUILD_NUMBER}")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    dockerImage.run("-p 5000:5000 --name flask_app_${BUILD_NUMBER}")
                }
            }
        }

    }
}
