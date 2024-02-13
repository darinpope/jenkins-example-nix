pipeline {
  agent { label 'agent1' }
  environment {
    NIX_SSL_CERT_FILE="/etc/ssl/certs/ca-bundle.crt"
  }
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
}