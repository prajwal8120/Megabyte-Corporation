pipeline {
  agent any 
  tools {
    maven 'M2_HOME'
  }
  
  stages{
    stage("code checkout"){
    steps{
      git 'https://github.com/prajwal8120/Megabyte-Corporation.git'
     }
   }
  
  stage("build package"){
    steps{
      sh 'mvn clean package'
      }
    }

  stage('Push') {
            steps {
                withCredentials([usernameColonPassword(credentialsId: 'docker-login', variable: 'docker-hub')]) {
                    sh "docker login -u $docker-login -p $docker-hub"
                    //sh 'docker build -t my-address .'
                    //sh 'docker tag my-address insta7120/my-address:latest'
                    //sh 'docker push insta7120/my-address:latest'
                }
            }
        }
  }
}
