def site = "$SITE"
def remote = "$REMOTE"
def repo = "$REPO"
def branch = "$BRANCH"

pipeline {
  agent {
    label 'cloud-noah'
  }
  stages {
    stage("Build and Configure ADM") {
      steps {
//        sh "rm -rf ps-ext-DeploymentAutomation"
//        sh "git clone -b jenkins-config git@github.com:appianps/ps-ext-DeploymentAutomation"
//        sh "pushd ps-ext-DeploymentAutomation"
        sh "#!/bin/bash"
        sh "rm -rf ps-ext-DeploymentAutomation"
        sh "git clone "
        sh "mvn clean package -DskipTests=true"
        sh "cd appian-adm-distribution/target && unzip appian-adm-distribution*.zip && " +
            "unzip appian-adm-import-client*.zip -d import && unzip appian-adm-versioning-client*.zip -d versioning"
      }
    }
    stage("Build Package from Repo") {
      steps {
        sh "ls appian-adm-distribution/target"
        sh "ls appian-adm-distribution/target/versioning"
        sh "rm -rf deployment-testing-buildpackage"
        sh "appian-adm-distribution/target/versioning/version-application.sh" +
            " -action buildPackage -repo_url https://github.com/" + remote + "/" + repo + " -branch_name " + branch +
            " -vc_username cdanzi -vc_password 4eb1b255fec1ddaffd7bf4898cb745faa51ccebe " +
            " -package_path ps-ext-DeploymentAutomation/test-package.zip -version_control_type GIT -local_repo_path $REPO"
      }
    }
    stage("Import Package into Appian") {
      steps {
        sh "appian-adm-distribution/target/import/deploy-application.sh" +
            " -application_path ps-ext-DeploymentAutomation/test-package.zip -username admin.user" +
            " -password ineedtoadminister -url https://" + site + ".appianci.net/suite"
      }
    }
  }
}

