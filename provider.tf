# configured aws provider with proper credentials
provider "aws" {
  region  = var.aws_region
  profile = "default"
}