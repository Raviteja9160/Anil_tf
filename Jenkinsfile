pipeline {
    agent any

    environment {
        TF_VAR_instance_type = "t2.micro"
        TF_VAR_ami = "ami-0c55b159cbfafe1f0"
        TF_VAR_subnet_id = "subnet-0123456789abcdef"
        TF_VAR_security_group_id = "sg-0123456789abcdef"
        TF_VAR_s3_bucket_name = "my-bucket"
        TF_VAR_iam_role_name = "my-role"
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
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
