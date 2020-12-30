string cron_string = readFile('package.json').contains('awsproy') ? "* * * * *" : ""

pipeline {
    agent any
    parameters {
        string(name: 'VERSION', defaultValue: '4.3.0', description: 'Version of the library to update')
    }
    triggers {
        cron(cron_string)
    }
    stages {
        stage('Example') {
            when {
                not {
                    branch 'test'
                }
            }
            steps {
                echo "Version ${params.VERSION}"
            }
        }
    }
}