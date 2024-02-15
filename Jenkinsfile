pipeline {
  agent { label 'agent1' }
  stages {
    stage('build') {
      steps {
        sh 'nix-shell --command "mvn clean install"'
      }
    }
    stage('hugo') {
      steps {
        sh 'nix-shell --command "hugo version"'
      }
    }
    stage('gh') {
      steps {
        sh 'nix-shell --command "gh version"'
      }
    }
  }
  post {
    always {
      sh 'nix-store --gc'
    }
  }
}
