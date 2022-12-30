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
}
  
  post{
    success{
      slackSend channel: 'capstone-project', color: "good", message: 'Passed'
    }
    failure{
      slackSend channel: 'capstone-project', color: "danger", message: 'Failed'
    }
    aborted{
      slackSend channel: 'capstone-project', color: "warning", message: 'Aborted'
    }
  }
}
