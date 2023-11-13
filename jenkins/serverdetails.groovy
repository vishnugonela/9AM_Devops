pipeline {
    agent any

    stages {
        stage('Master Details') {
            steps {
                script {
                    def masterNode = Jenkins.getInstance()
                    def masterNodeDetails = masterNode.toComputer()
                    echo "Master Node Name: ${masterNodeDetails.name}"
                    echo "Master Node Description: ${masterNode.nodeDescription}"
                    echo "Master Node Labels: ${masterNode.nodeLabelString}"
                }
            }
        }

    
    }
}
