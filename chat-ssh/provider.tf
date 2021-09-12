terraform {
  required_providers {
    aws = {
      region = "us-east-2"
      #source  = "hashicorp/aws"
      version = "~> 3.0"
      assume_role {
        role_arn = "arn:aws:iam::571251826155:user/Louis"
      }
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
  shared_credentials_file = "{$HOME}/.aws/credentials"
  profile                 = "default"
}