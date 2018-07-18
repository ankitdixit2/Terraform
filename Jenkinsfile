#!groovy

// Build Parameters
properties([ parameters([
  string( name: 'AWS_ACCESS_KEY_ID', defaultValue: ''),
  string( name: 'AWS_SECRET_ACCESS_KEY', defaultValue: '')
]), pipelineTriggers([]) ])

// Environment Variables
env.AWS_ACCESS_KEY_ID = AKIAIQKFPYRZQPG7M7MA
env.AWS_SECRET_ACCESS_KEY = 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

node {
  env.PATH += ":/apps/Terraform/"

    stage ('Checkout') {
    checkout scm
  }
    stage('init') {
        /* Test Terraform  */
           
            sh "terraform init -backend=true -input=false"
    }
    stage('plan') {
            sh "terraform plan -out=tfplan -input=false /apps/Terraform"
    }  
    stage ('Terraform Apply') {
            sh 'terraform apply tfplan'
  }
}
