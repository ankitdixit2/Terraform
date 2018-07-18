node {
    checkout scm
    stage('build') {
        /* Test Terraform  */
        dir ('sudo /apps/Terraform') {
    sh 'pwd'
}
            sh "sudo terraform plan -out=tfplan -input=false"
            sh "sudo terraform apply -input=false tfplan"
                       
    }
}
