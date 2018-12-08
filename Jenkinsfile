pipeline {
    agent any 
    stages {
        stage('syntax check') {
            steps {
                sh 'cd /opt/HPCCSystems/7.0.2/clienttools/bin'
                sh 'sudo eclcc -syntax eclFile.ecl'
                sh 'sudo eclcc -syntax eclTest.ecl' 
            }
        }
        stage('compile') {
            steps {                               
                sh 'sudo eclcc eclFile.ecl'                
            }   
        }
        stage('test') {
            steps {                               
                sh 'sudo eclcc eclTest.ecl'
                sh 'sudo ./a.out'

            }   
        }
        stage('deploy and run') {
            steps {                               
                sh 'sudo eclplus @eclFile.ecl server=10.144.162.1 user=jfeng password=Lexisfjc cluster=thor50_b'                
            }   
        }
    }
}
