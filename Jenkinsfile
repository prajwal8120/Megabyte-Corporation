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

  stage('Build & Run Container') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-login', usernameVariable: 'insta7120', passwordVariable: 'REGISTRY_PASSWORD')]) {
                    sh "docker login -u $insta7120 -p $REGISTRY_PASSWORD"
                    sh 'docker build -t my-address .'
                    sh 'docker run -d --name my-instance1 -p 8082:8080 my-address'
                    //sh 'docker tag my-address insta7120/my-address:latest'
                    //sh 'docker push insta7120/my-address:latest'
                }
            }
        }
  }
}
