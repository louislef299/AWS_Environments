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
    #key    = "global/s3/terraform.tfstate"
    region = "us-east-2"

    #dynamodb_table = "terraform_locks"
    #encrypt        = true
  }
}

provider "aws" {
  region                  = "us-east-2" #"var.region"
  shared_credentials_file = "{$HOME}/.aws/credentials"
}