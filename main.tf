terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "12scripts"
    key    = "circleci-tf-backend/terraform.tfstate"
    region = "ap-south-1"
  }
}

#! Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "CircleCIIsntance" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
  tags = {
    Name = "CircleCIIsntance"
  }
}

resource "aws_s3_bucket" "CircleCIBucket" {
  bucket = "CircleCIBucket"

  tags = {
    Name = "CircleCIBucket"
  }

}
