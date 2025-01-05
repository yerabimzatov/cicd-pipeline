pipeline {
  agent any
  stages {
    stage('Build Application') {
      steps {
        sh 'chmod +x scripts/build.sh'
        sh 'scripts/build.sh'
      }
    }

    stage('Run Tests') {
      steps {
        sh 'scripts/test.sh'
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