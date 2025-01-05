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
        script {
          withCredentials([usernamePassword(credentialsId: '483923d8-1310-4f7d-a364-45fe66ab518e', 
                                             usernameVariable: 'DOCKER_USER', 
                                             passwordVariable: 'DOCKER_PASS')]) {
            sh "docker login -u ${DOCKER_USER} -p ${DOCKER_PASS}"
            sh "docker push ${DOCKER_USER}/epam-app:latest"
          }
        }
      }
    }

  }
}
