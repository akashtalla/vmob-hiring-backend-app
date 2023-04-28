pipeline{
  agent any
  
  tools{
      maven 'Maven-3.9.1'
  }
  
  environment{
    mvnHome = tool name: 'Maven-3.9.1', type: 'maven'
	mvbCMD = "${mvnHome}/bin/mvn"
  }
  
  stages{
    
	stage("Git Checkout"){
	  steps{
           git credentialsId: 'git-creds', url: 'https://github.com/akashtalla/vmob-hiring-backend-app.git'	  
	  }
	}
	
	stage("Maven Unit Testing"){
	  steps{
           bat "${mvbCMD} test"
	  }
	}
	
	stage("Maven Integration Testing"){
	  steps{
           bat "${mvbCMD} verify -DskipUnitTests"
	  }
	}

	stage("Build & Package"){
	  steps{
           bat "${mvbCMD} clean package"
	  }
	}
	
  }
  
}
