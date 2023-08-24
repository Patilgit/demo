@Library('test-library') _
pipeline {
    agent any
    
    stages{
       stage('GetCode'){
            steps{
                git branch: 'main', credentialsId: '40f7a21f-6ce7-4bc0-b115-4a85ab05b062', url: 'https://github.com/Patilgit/demo.git'
            }
         }        
       stage('Build'){
            steps{
                script{
                 build.maven()
                }
            }
       } 
        stage('sonarqube-analysis'){
           steps{
                withSonarQubeEnv('sonar-token') { 
                 sh "mvn clean package sonar:sonar"
                }
            }
        }
        stage('Docker buuid'){
            steps{
                script{
             docker.dockerbuild()
                     }
                }
            }       
        }
}
