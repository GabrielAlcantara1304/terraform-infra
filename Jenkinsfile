pipeline {
    agent any

    stages {

        stage("Checkout Source") {
             steps{
                git url: 'https://github.com/GabrielAlcantara1304/terraform-infra', branch: 'main'
                sh 'ls'
            }

        }
           

    }
}