//SCRIPTED Pipeline
// node {
// 	// stage('Build') {
// 	// 	echo "Build"
// 	// }
// 	// stage('Test') {
// 	// 	echo "Test"
// 	// }
// 	// stage('Integration Test') {
// 	// 	echo "Test"
// 	// }
// 	echo "Build"
// 	echo "Test"
// 	echo "Integration Test"
// }

//DECLARATIVE PIPELINE

pipeline {
	agent { docker { 
		image 'hashicorp/terraform:light' 
		args  '--entrypoint="" -u root'
		} }
	stages {
		stage('Build') {
			steps {
				sh "terraform --version"
				echo "Build"
				echo "${env.BUILD_NUMBER}"
				echo "${env.JOB_NAME}"
				echo "${env.BUILD_TAG}"
				echo "${env.BUILD_ID}"
				echo "${env.BUILD_URL"
			}
		}
		stage('Test') {
			steps {
				echo "Test"
			}
		}
		stage('Integration Test') {
			steps {
				echo "Integration Test"
			}
		}
	}
	post {
		always {
			echo "I run always"
		}
		success {
			echo "I run only on success"
		}

		failure {
			echo "I run only on failure"
		}
		//changed
		//

	}
}