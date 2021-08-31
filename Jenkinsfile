pipeline {
  agent any
  stages {
    stage('Tooling') {
      steps {
        tool(name: 'JDK11', type: 'jdk')
      }
    }

    stage('Code') {
      steps {
        git(url: 'https://github.com/elanglet/projet-banque', branch: 'jenkins')
      }
    }

    stage('Maven') {
      steps {
        bat(script: 'mvn banque/pom.xml test package', returnStdout: true)
      }
    }

    stage('Reports') {
      steps {
        junit 'banque/*/target/surefire-results/*.xml'
      }
    }

  }
}