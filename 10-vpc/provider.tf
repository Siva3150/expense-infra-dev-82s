terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.0"

    }
  }

  backend "s3" {
    bucket         = "82s-remote-state-siva"
    key            = "expense-vpc"
    region         = "us-east-1"
    dynamodb_table = "82s-locking"
  }
}




provider "aws" {
  region = "us-east-1"
}