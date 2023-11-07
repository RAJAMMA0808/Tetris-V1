# React Tetris V1

Tetris game built with React

<h1 align="center">
  <img alt="React tetris " title="#React tetris desktop" src="./images/game.jpg" />
</h1>


Use Sonarqube block 
```
environment {
        SCANNER_HOME=tool 'sonar-scanner'
      }

stage("Sonarqube Analysis "){
            steps{
                withSonarQubeEnv('sonar-server') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Tetris-V1 \
                    -Dsonar.projectKey=Tetris-V1 '''
                }
            }
        }
```        

Owasp block
```
stage('OWASP FS SCAN') {
            steps {
                dependencyCheck additionalArguments: '--scan ./ --disableYarnAudit --disableNodeAudit', odcInstallation: 'DP-Check'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }
```

# ARGO CD SETUP
https://archive.eksworkshop.com/intermediate/290_argocd/install/

# Image updater stage
```
 environment {
    GIT_REPO_NAME = "Tetris-V1"
    GIT_USER_NAME = "RAJAMMA0808"
  }
    stage('Checkout Code') {
      steps {
        git branch: 'main', url: 'https://github.com/RAJAMMA0808/Tetris-V1.git'
      }
    }

    stage('Update Deployment File') {
      steps {
        script {
          withCredentials([string(credentialsId: 'github', variable: 'GITHUB_TOKEN')]) {
            // Determine the image name dynamically based on your versioning strategy
            NEW_IMAGE_NAME = "raji0808/Tetris-V1:latest"

            // Replace the image name in the deployment.yaml file
            sh "sed -i 's|image: .*|image: $NEW_IMAGE_NAME|' deployment.yml"

            // Git commands to stage, commit, and push the changes
            sh 'git add deployment.yml'
            sh "git commit -m 'Update deployment image to $NEW_IMAGE_NAME'"
            sh "git push https://${GITHUB_TOKEN}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:main"
          }
        }
      }
    }

```

