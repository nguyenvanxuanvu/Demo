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
                echo '1.Deploying to Green environment...'
                
                echo "2.Deploying to Green environment..."
            }
        }
        stage('Smoke Test Green Environment') {
            steps {
                echo 'Running smoke tests on Green environment...'
            }
        }
        stage('Switch Traffic') {
            steps {
                echo 'Switching traffic to Green environment...'
                echo "Switching traffic back to Green environment..."
            }
        }
        stage('Monitor') {
            steps {
                echo 'Monitoring Green environment...'
                sleep 30 // Simulating monitoring period
            }
        }
    }
}
