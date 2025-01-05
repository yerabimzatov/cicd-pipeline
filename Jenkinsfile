pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/yerabimzatov/cicd-pipeline.git', branch: 'main', credentialsId: '644ad482-ad4f-422c-89e8-03d9cf712837')
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
