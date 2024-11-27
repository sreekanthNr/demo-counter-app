pipeline{
  agent any
  tools{
    maven 'mvn'
  }
  environment {
        SONAR_HOST_URL = 'http://34.134.134.232:9000'  // Update to your SonarQube URL
        SONAR_AUTH_TOKEN = credentials('env.squ_66669c2c23d45836207ec463d36131b3a36ea70d') // Jenkins credential ID
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
                  mvn sonar:sonar \
                    -Dsonar.projectKey=my-project \
                    -Dsonar.host.url=${SONAR_HOST_URL} \
                    -Dsonar.login=${SONAR_AUTH_TOKEN}
                  
                }
          } 
     }
   }
        
  }
}
  
