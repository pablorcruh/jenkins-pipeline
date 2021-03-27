pipeline {
    agent any
    
    stages {

        stage('Build') {
            steps {
                sh  '''
                    chown jenkins:jenkins $PWD/
                    echo $(whoami)
                    ls -la jenkins/build 
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh 

                    '''
            }
        }

        stage('Test') {
            steps {
                sh  '''
                    chmod +x jenkins/test/testing.sh
                    ./jenkins/test/testing.sh mvn test
                    '''
            }
        }

        stage('Push') {
            steps {
                sh  '''
                    chmod +x jenkins/push/push.sh 
                    ./jenkins/push/push.sh
                    '''
            }
        }

        stage('Deploy') {
            steps {
                sh  '''
                    chmod +x jenkins/deploy/deploy.sh 
                    ./jenkins/deploy/deploy.sh
                    '''
            }
        }
    }
}