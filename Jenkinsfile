pipeline {
    agent any

    stages {
        // Etapes de construction du job
        stage('Récupération du code dans Git') {
            steps {
                // Commandes et instruction à exécuter
                git url: 'https://github.com/elanglet/projet-banque.git', branch: 'jenkins'
            }
        }
        stage('Exécution de la commande mvn') {
            steps {
                // Sous Windows : 
                bat 'mvn -f banque/pom.xml test package' 
                // Sous Linux :
                // sh ''
            }
        } 
        stage('Publication des résultats de test') {
            steps {
                // Publication des résultats JUnit
                junit 'banque/*/target/surefire-reports/*.xml'
            }
        }        
    }
}
