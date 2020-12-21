pipeline {
    agent any
    parameters {
        string(name: 'VERSION', defaultValue: '4.3.0', description: 'Version of the library to update')
    }
    triggers {
        cron('* * * * *')
    }
    when {
        not {
            branch 'test'
        }
    }
    stages {
        stage('Example') {
            steps {
                echo "Version ${params.VERSION}"
            }
        }
    }
}