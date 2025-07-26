terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }
  backend "s3" {
    bucket = "terraformproj-remote-backend-s3"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}