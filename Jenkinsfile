node {
    checkout scm
    stage('build') {
        /* Test Terraform  */
        dir ('/apps/Terraform') {
    sh 'pwd'
}
            sh "terraform plan -out=tfplan -input=false"
                                   
    }
}
