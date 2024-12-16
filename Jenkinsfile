pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
            }
        }
        stage('Deploy to Green Environment') {
            steps {
                echo 'Deploying to Green environment...'
                sh './deploy.sh green' // Custom script for deployment
            }
        }
        stage('Smoke Test Green Environment') {
            steps {
                echo 'Running smoke tests on Green environment...'
                sh './smoke_test.sh green'
            }
        }
        stage('Switch Traffic') {
            steps {
                echo 'Switching traffic to Green environment...'
                sh './switch_traffic.sh green'
            }
        }
        stage('Monitor') {
            steps {
                echo 'Monitoring Green environment...'
                sleep 30 // Simulating monitoring period
                sh './monitor.sh green'
            }
        }
        stage('Rollback (if needed)') {
            when {
                expression { return currentBuild.result == 'FAILURE' }
            }
            steps {
                echo 'Rolling back to Blue environment...'
                sh './switch_traffic.sh blue'
            }
        }
    }
}
