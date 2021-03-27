pipeline {
    agent any
    
    stages {

        stage('Build') {
            steps {
                sh  '''
                    echo $(whoami)
                    chmod +x jenkins/build/*.sh
                    ls -la jenkins/build 
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh 

                    '''
            }
        }

        stage('Test') {
            steps {
                sh  '''
                    chmod +x jenkins/test/*.sh
                    ./jenkins/test/testing.sh mvn test
                    '''
            }
        }

        stage('Push') {
            steps {
                sh  '''
                    chmod +x jenkins/push/*.sh 
                    ./jenkins/push/push.sh
                    '''
            }
        }

        stage('Deploy') {
            steps {
                sh  '''
                    chmod +x jenkins/deploy/*.sh 
                    ./jenkins/deploy/deploy.sh
                    '''
            }
        }
    }
}