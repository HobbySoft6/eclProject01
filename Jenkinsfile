pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello world1!' 
            }
        }
        stage('Stage 2') {
            steps {
                echo 'Hello world2!' 
                echo 'Hello world22!'
                sh 'cd /opt/HPCCSystems/7.0.2/clienttools/bin'
                sh 'sudo eclcc -syntax ecl01.ecl'
                sh 'sudo eclcc ecl01.ecl'
                sh 'sudo ./a.out'

            }   
        }
    }
}
