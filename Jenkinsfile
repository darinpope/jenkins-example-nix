pipeline {
  agent { label 'agent1' }
  stages {
    stage('build') {
      steps {
        sh 'nix-shell --command "mvn clean install"'
      }
    }
  }
}