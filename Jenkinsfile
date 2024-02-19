pipeline {
    agent any

    stages {

        stage("Checkout Source") {
             steps{
                git url: 'https://github.com/GabrielAlcantara1304/terraform-infra', branch: 'main'
                sh 'ls'
            }
        }
        stage("Execução do projeto"){
            environment {
                AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
                AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
                AWS_BUCKET_KEY = credentials('AWS_BUCKET_KEY')
                AWS_BUCKET = credentials('AWS_BUCKET')
            }
            steps {
                script {
                    sh 'terraform init backend config="bucket=$AWS_BUCKET backend config="key=$AWS_ACCESS_KEY_ID"'
                    sh 'terraform apply --auto-aprove'
                }
            }
        }    
    }
}
