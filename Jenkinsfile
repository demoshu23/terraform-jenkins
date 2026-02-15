pipeline {
    agent any

    stages {

        stage('SCM Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/demoshu23/terraform-jenkins.git'
            }
        }

        stage('Terraform Deploy Dev') {
            steps {
                withCredentials([aws(
                    credentialsId: 'AWS-DEV',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                )]) {
                    dir('dev') {
                        sh 'terraform init'
                        sh 'terraform destroy -auto-approve -var-file=dev.tfvars'
                    }
                }
            }
        }

        stage('Terraform Deploy Prod') {
            steps {
                withCredentials([aws(
                    credentialsId: 'AWS-DEV',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                )]) {
                    dir('prod') {
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve -var-file=prod.tfvars'
                    }
                }
            }
        }

    }
}
