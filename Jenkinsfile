pipeline{
  agent any
  tools{
    maven 'mvn'
  }
  stages{
   stage('scm'){
     steps{
       echo 'scm'
     }
   }
   stage('package'){
     steps{
       sh 'mvn package'
     }
   }
  }
}
  
