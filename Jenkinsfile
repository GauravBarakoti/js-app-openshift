pipeline {
  agent {
    node 'Web'
  }
  stages {
    stage('sh') {
      steps {
        sh 'sudo rm -rf *'
        sh 'sudo rm -rf .git .gitignore'
        sh 'kill-port 3001'
        sh 'sudo git clone https://github.com/Akki-1332/simple-reactjs-app.git .'
        sh 'sudo npm install -g create-react-app'
        sh 'sudo npm install'
        sh 'sudo npm start &'
      }
    }

  }
}