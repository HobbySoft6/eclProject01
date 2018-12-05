pipeline {
    agent any 
    stages {
        stage('syntax check') {
            steps {
                sh 'cd /opt/HPCCSystems/7.0.2/clienttools/bin'
                sh 'sudo eclcc -syntax ecl01.ecl' 
            }
        }
        stage('compile') {
            steps {                               
                sh 'sudo eclcc ecl01.ecl'
                sh 'sudo ./a.out'

            }   
        }
    }
}
