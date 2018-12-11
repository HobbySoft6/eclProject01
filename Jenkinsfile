pipeline {
    agent any 
    stages {
        stage('syntax check') {
            steps {
                sh 'cd ~'
                sh 'eclcc -syntax eclFile.ecl'
                sh 'eclcc -syntax eclTest.ecl'
                sh 'eclcc -syntax eclModule.ecl'
            }
        }
        
        stage('test') {
            steps {                               
                sh 'eclcc eclTest.ecl'
                sh './a.out'
            }   
        }

        stage('compile') {
            steps {                               
                sh 'eclcc eclFile.ecl'                
            }
        }
   
        stage('deploy and run') {
            steps {                              
                sh './a.out'                
            }   
        }

    }
}
