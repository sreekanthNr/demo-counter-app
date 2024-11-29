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
       withMaven(globalMavenSettingsConfig: '', jdk: 'jdk', maven: 'mvn', mavenSettingsConfig: '9a5c50eb-5f67-4990-8334-9b7bb9b0170c', traceability: true) {
                 sh 'mvn deploy'
       }
     }
   }
     
       
  }
}
  
