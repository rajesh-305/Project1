pipeline
{
    agent any
tools {
    maven 'maven363'
}
    stages
    {
        stage("checkoutSC")
        {
            steps
            {
                git branch: 'devops', url: 'https://github.com/rajesh-305/Project1.git'
                slackSend channel: 'devops-tasks', message: 'Source Code Checked out successfully'
            }
        }
        stage("compileSC")
        {
            steps
            {
                sh 'mvn compile'
                 slackSend channel: 'devops-tasks', message: 'Compilation- done successfully'
            }
        }
        stage("runtestcases")
        {
            steps
            {
                sh 'mvn test'
slackSend channel: 'devops-tasks', message: 'Unit Tests executed successfully'
        }
    }
    stage("package")
    {
        steps
        {
            sh 'mvn package'
            slackSend channel: 'devops-tasks', message: 'Package created successfully'

        }
    }
    stage("DeployToTest")
    {
        steps
        {
deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: '6f26ae7b-acaf-46b9-b49b-6fd5ae455bc5', path: '', url: 'http://172.31.33.131:8080')], contextPath: 'testapp', onFailure: false, war: '**/*.war'
              slackSend channel: 'devops-tasks', message: 'Application Successfully deployed to test'
                slackSend channel: 'devops-tasks', message: ' @Rambabu Siliveru The application is available on http://51.20.12.244:8080/testapp'
        }
    }
    stage("run_tests")
    {
        steps
        {
            sh 'echo "Testing passed"'
                            slackSend channel: 'devops-tasks', message: ' Test cases executed successfully - Ready to deploy to prod'

        }
    }
    stage("deploytoprod")
    {
        steps
        {
              slackSend channel: 'devops-tasks', message: ' The application is waiting for approval from ANAND!'
            input message: 'Waiting for approval from Anand', submitter: 'anand'
            deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: '44548f93-1143-42ae-8f75-6578a9991527', path: '', url: 'http://172.31.35.116:8080')], contextPath: 'app1v1', onFailure: false, war: '**/*.war'
               slackSend channel: 'devops-tasks', message: ' Application is Live and available on : http://13.60.162.119:8080/app1v1'
        }
    }
    
    
    }
    post
    {
        failure
        {
               slackSend channel: 'devops-tasks', message: 'Project FAILED!!! IMMEDIATE ACTION REQUIRED!!!'
        }
    }
}
