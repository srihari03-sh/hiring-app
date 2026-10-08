pipeline {

    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh '''
                    docker build \
                    -t srihari0310/hiring-app:${BUILD_NUMBER} .
                '''
            }
        }

        stage('Push Docker Image') {
            steps {

                withCredentials([
                    usernamePassword(
                        credentialsId: 'dockerhub-creds',
                        usernameVariable: 'DH_USER',
                        passwordVariable: 'DH_PASS'
                    )
                ]) {

                    sh '''
                        echo "$DH_PASS" | docker login \
                        -u "$DH_USER" \
                        --password-stdin

                        docker push srihari03/hiring-app:${BUILD_NUMBER}
                    '''
                }
            }
        }
    }
}
