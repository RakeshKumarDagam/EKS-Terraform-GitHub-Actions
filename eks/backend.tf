terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "probpm-bucket"
    region         = "us-east-1d"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "dynamodb_table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
