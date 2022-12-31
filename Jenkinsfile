pipeline {
    agent {label 'multi-az'}
    stages {
        stage ('git clone') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/gopivurata/terraform-AZ-mysql-db.git'
            }
        }
        stage ('terraform_multi_az_db') {
            steps {
                sh 'terraform init'
                sh 'terraform apply -var-file="dev.tfvars -auto-approve"'
            }
        }
    }
}