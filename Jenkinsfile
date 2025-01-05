pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/yerabimzatov/cicd-pipeline', branch: 'main', credentialsId: '27ea1d75-8b7e-4ce9-a26e-33d1bc1eec94')
      }
    }

  }
}