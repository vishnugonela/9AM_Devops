pipeline {
    agent any

    stages {
        stage('Get Master Details') {
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

        stage('Get Slave Details') {
            steps {
                script {
                    for (slave in hudson.model.Jenkins.instance.slaves) {
                        echo "Slave Node Name: ${slave.name}"
                        echo "Slave Node Description: ${slave.nodeDescription}"
                        echo "Slave Node Labels: ${slave.labelString}"
                    }
                }
            }
        }
    }
}
