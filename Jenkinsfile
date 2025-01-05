pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/yerabimzatov/cicd-pipeline', branch: 'main')
      }
    }

    stage('Build') {
      steps {
        sh 'chmod +x scripts/build.sh'
        sh 'scripts/build.sh'
      }
    }

  }
}