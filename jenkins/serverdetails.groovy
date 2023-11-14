pipeline {
    agent any

    stages {
        stage('Master Details') {
            steps {
                script {
                    def masterNodeDetails = masterNode.toComputer()
                    echo "Master Node Name: ${masterNodeDetails.name}"
                    echo "Master Node Description: ${masterNode.nodeDescription}"
                    
                }
            }
        }
            stage('exceptional handling') {
                steps {
                    script{
                        try {
                        sh 'command_that_might_fail'
                        echo 'Success'
                    } catch (Exception e) {
                        
                        echo "An error occurred: ${e.getMessage()}"
                        currentBuild.result = 'FAILURE'
                    }
                    }
            }
        }
}
}
