pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/yerabimzatov/cicd-pipeline.git', branch: 'main')
      }
    }

    stage('Build Application') {
      steps {
        sh 'sh \'scripts/build.sh\''
      }
    }

    stage('Run Tests') {
      steps {
        sh 'sh \'scripts/test.sh\''
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t yerzimage'
      }
    }

    stage('Push Docker Image') {
      steps {
        sh '''docker push rabimzatov/yerzimage:${BUILD_NUMBER}
docker push rabimzatov/yerzimage:latest
'''
      }
    }

  }
}