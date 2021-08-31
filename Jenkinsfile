pipeline {
    agent any
    tools {
		jdk 'JDK11' 
	}
    stages {
    stage('Code') {
      steps {
        git(url: 'https://github.com/elanglet/projet-banque', branch: 'jenkins')
      }
    }

    stage('Maven') {
      steps {
        tool(name: 'JDK11', type: 'jdk')
        bat(script: 'mvn -f banque/pom.xml test package', returnStdout: true)
      }
    }

    stage('Reports') {
      steps {
        junit 'banque/*/target/surefire-results/*.xml'
      }
    }

  }
}