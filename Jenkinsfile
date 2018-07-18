node {
    checkout scm
    stage('build') {
        /* Test Terraform  */
      
            sh "terraform plan -out=tfplan -input=false /apps/Terraform"
                                   
    }
}
