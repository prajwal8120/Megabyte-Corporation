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
                withCredentials([usernamePassword(credentialsId: 'docker-login', passwordVariable: 'password_reg', usernameVariable: 'name')]) {
                //withCredentials([usernamePassword(credentialsId: 'docker-login', usernameVariable: 'insta7120', passwordVariable: 'REGISTRY_PASSWORD')]) {
                //withCredentials([usernameColonPassword(credentialsId: 'docker-login', variable: 're')]) {
                //withCredentials([usernamePassword(credentialsId: 'docker-login', usernameVariable: 'insta7120', passwordVariable: 'dock-hub')]) {
                    sh 'docker login -u $name -p $password_reg'
                    sh 'docker login --username $name --password-stdin $password_reg'
                    sh 'docker build -t my-address .'
                    sh 'docker run -d --name my-instance -p 8081:8080 my-address'
                    sh 'docker tag my-address insta7120/my-address:v1.0'
                    sh 'docker push insta7120/my-address:v1.0'
                }
            }
        }
  }
}
