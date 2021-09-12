terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "vpc-backend"
    key    = "aws/s3"
    region = "us-east-2"
  }
}

provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "{$HOME}a/.aws/credentials"
}