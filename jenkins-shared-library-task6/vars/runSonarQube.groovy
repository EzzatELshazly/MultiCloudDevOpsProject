def runSonarQube() {
   withSonarQubeEnv() {
      sh "./gradlew sonar"
    }
}