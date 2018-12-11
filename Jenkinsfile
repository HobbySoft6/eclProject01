pipeline {
    agent any 
    stages {
        stage('syntax check') {
            steps {
                sh 'pwd'
                sh 'sudo eclcc -syntax eclFile.ecl'
                sh 'sudo eclcc -syntax eclTest.ecl'
                sh 'sudo eclcc -syntax eclModule.ecl'
            }
        }
        
        stage('test') {
            steps {                               
                sh 'sudo eclcc eclTest.ecl'
                sh './a.out'
            }   
        }

        stage('compile') {
            steps {                               
                sh 'sudo eclcc eclFile.ecl'                
            }
        }
   
        stage('deploy and run') {
            steps {                              
                sh './a.out'                
            }   
        }

    }
}
