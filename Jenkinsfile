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

    stage('Test') {
      steps {
        sh 'chmod +x scripts/test.sh'
        sh 'scripts/test.sh'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t epam-app:latest .'
      }
    }

    stage('Docker Push') {
      steps {
        sh '''DOCKER_USERNAME = \'rabimzatovepm\'
DOCKER_PASSWORD = \'Qan74108520+\''''
        sh 'echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin'
        sh 'docker push rabimzatovepm/epam-image:latest'
      }
    }

  }
}