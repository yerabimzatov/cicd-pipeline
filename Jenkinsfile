pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/yerabimzatov/cicd-pipeline.git', branch: 'main', credentialsId: '7c1bc38f-4a9b-44c4-a400-7ee1b8a45564')
      }
    }

    stage('Build Application') {
      steps {
        sh 'chmod +x script/build.sh'
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