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
            stage('exceptional handling') {
                steps {
                    script{
                        try {
                        // Code that may throw an exception
                        sh 'command_that_might_fail'
                        
                        // Additional steps
                        echo 'Success'
                    } catch (Exception e) {
                        // Handle the exception
                        echo "An error occurred: ${e.getMessage()}"
                        
                        // You can also mark the build as unstable or fail the build
                        currentBuild.result = 'FAILURE'
                    }
            }
        }
}
}
