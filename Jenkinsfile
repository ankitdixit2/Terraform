node {
     stage ('Checkout') {
    checkout scm
  }
  stage('init') {                    
            sh "terraform init -backend=true -input=false"
    } 
    stage('plan') {
            sh "terraform plan -out=tfplan -input=false /apps/Terraform"
    }  
    stage ('Terraform Apply') {
            sh 'terraform apply tfplan'
  }
}
