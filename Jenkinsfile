node {
    checkout scm
    stage('build') {
        /* Test Terraform  */
        dir ('/apps/Terraform') {
    sh 'pwd'
}
            sh "terraform init"
            sh "terraform plan -out=tfplan -input=false /apps/Terraform"
            sh "terraform apply -input=false tfplan"
                       
    }
}
