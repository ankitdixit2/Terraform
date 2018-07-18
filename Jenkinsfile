node {
    checkout scm
    stage('init') {
        /* Test Terraform  */
            sh "terraform validate -check-variables=false"
            sh "terraform init -backend=true -input=false"
    }
    stage('plan') {
            sh "terraform plan -out=tfplan -input=false /apps/Terraform"
    }  
    stage ('Terraform Apply') {
            sh 'terraform apply tfplan'
  }
}
