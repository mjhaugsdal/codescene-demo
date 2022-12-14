pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: '3.6.x-fixes', credentialsId: '0a7fd248-2601-4f26-a7d7-6201d75347f5', url: 'https://github.com/apache/cxf.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('codescene') {
            steps {
                  codescene analyzeBranchDiff: true, baseRevision: 'origin/main', credentialsId: 'jenkins-bot', deltaAnalysisUrl: 'http://172.17.0.3:3003/projects/2/delta-analysis', failOnDecliningCodeHealth: false, failOnFailedGoal: false, originUrl: 'https://github.com/apache/cxf.git', repository: 'cxf'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}