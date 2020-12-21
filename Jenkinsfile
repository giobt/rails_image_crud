pipeline {
    agent any
    parameters {
        string(name: 'VERSION', defaultValue: '4.3.0', description: 'Version of the library to update')
    }
    triggers {
        cron('* * * * *')
    }
    stages {
        stage('Example') {
            echo "Version ${params.VERSION}"
        }

    }
}