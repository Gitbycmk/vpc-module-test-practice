terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.10.0"
    }
  }

  backend "s3" {
    bucket = "cmk-remote-state-bucket-2"
    key = "vpc-module-test-practice-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true

  }
}

provider "aws" {
  region = "us-east-1"
}