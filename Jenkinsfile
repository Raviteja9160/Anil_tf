pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = 'AWS_ACCESS_KEY_ID'
        AWS_SECRET_ACCESS_KEY = 'AWS_SECRET_ACCESS_KEY'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
