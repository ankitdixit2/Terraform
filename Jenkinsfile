def notifySlack(String buildStatus = 'STARTED') {
    // Build status of null means success.
    buildStatus = buildStatus ?: 'SUCCESS'
    
    def msg = "${buildStatus}: `${env.JOB_NAME}` #${env.BUILD_NUMBER}:-AWS EC2 VMs are created by shrilekha.s"

    slackSend(message: msg)
}

node {
     stage ('Checkout') {
    checkout scm
  }
  stage('init') {                    
            sh "terraform init -backend=true -input=false"
    } 
    stage('plan') {
            sh "terraform plan -out=tfplan -input=false"
    }  
    stage ('Terraform Apply') {
            sh "terraform apply tfplan"
  } 
 //   stage ('Find IPs') {
 //           sh "/apps/Terraform/script-ToExtract-EC2-IP-Address-FromTFstate.sh"
//  }
     try {
      
        notifySlack(currentBuild.result)

        // Existing build steps.
    } catch (e) {
        currentBuild.result = 'FAILURE'
        throw e
    }
}
