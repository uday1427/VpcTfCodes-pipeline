terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "newkops8"
    key    = "devops/terraform.tfstate"
    region = "ap-southeast-2"   
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}


