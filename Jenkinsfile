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
        stage('Docker buuid'){
            steps{
                 script{
    sudo chmod 777 /var/run/docker.sock
    aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 079675111031.dkr.ecr.ap-south-1.amazonaws.com
    docker build -t darshan .
    docker tag darshan:latest 079675111031.dkr.ecr.ap-south-1.amazonaws.com/darshan:latest
    docker push 079675111031.dkr.ecr.ap-south-1.amazonaws.com/darshan:latest
  }
            }
        }
    }       
}
