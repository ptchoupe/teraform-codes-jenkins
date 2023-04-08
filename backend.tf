terraform {
  backend "s3" {
    bucket = "terraformstatefile01"
    key    = "jenkins_state"
    region = "us-east-1"
  }
}