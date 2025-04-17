pipeline {
  agent any
  environment {
    EC2_HOST = '3.86.250.98'
  }
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Deploy to EC2') {
      steps {
        sshagent (credentials: ['ec2-ssh-key']) {
          sh """
            ssh -o StrictHostKeyChecking=no ubuntu@${EC2_HOST} \\
              'cd ~/app/scripts && chmod +x deploy.sh && ./deploy.sh'
          """
        }
      }
    }
  }
  triggers {
    githubPush()
  }
}
