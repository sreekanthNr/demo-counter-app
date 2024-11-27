pipeline{
  agent any
  tools{
    maven 'mvn'
  }
  environment {
        SONAR_HOST_URL = 'http://34.134.134.232:9000'  // Update to your SonarQube URL
        SONAR_AUTH_TOKEN = credentials('squ_85ffdafd4b2676aab96422a2b241cc58df1cf9f1') // Jenkins credential ID
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
   stage('SonarQube Analysis') {
     steps {
          script {
            // Set SonarQube environment
                withSonarQubeEnv('sonarqube') { // 'SonarQube' is the name of the configured SonarQube server
                        // Run SonarQube analysis
                   sh """
                      mvn sonar:sonar \
                     -Dsonar.host.url=${SONAR_HOST_URL} \
                     -Dsonar.login=${SONAR_AUTH_TOKEN}'
                   """             
                }
          } 
     }
   }
        
  }
}
  
