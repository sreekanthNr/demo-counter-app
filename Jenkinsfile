pipeline{
  agent any
  tools{
    maven 'mvn'
  }
  stages{
   stage('scm'){
     steps{
       git branch: 'main', credentialsId: '4d092c6c-32d5-4708-ba84-a3738b9ed40f', url: 'https://github.com/sreekanthNr/demo-counter-app.git'
     }
   }
   stage('package'){
     steps{
       sh 'mvn package'
     }
   }
   
   stage('docker'){
     steps{
       withCredentials([usernameColonPassword(credentialsId: '9a904c35-d910-427f-a878-8e5374b6431d', variable: 'dockerpass')]) {
         sh 'sudo docker build -t sreekanth143/java-web-app-docker:demoone .'
         sh 'sudo docker push sreekanth143/java-web-app-docker:demoone'
       }
     }
   }
     
       
  }
}
  
