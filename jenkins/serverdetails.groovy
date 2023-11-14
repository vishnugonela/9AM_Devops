pipeline {
    agent any

    stages {
        stage('Master Details') {
            steps {
                script {
                    def masterNodeDetails = 'myhost'
                    echo "Master Node Name: ${masterNodeDetails}"                    
                    
                }
            }
        }
            stage('exceptional handling') {
                steps {
                    script{
                        
                        echo "An error occurred: ${e.getMessage()}"
                        currentBuild.result = 'FAILURE'
                    }
                    }
            }
        }
}

