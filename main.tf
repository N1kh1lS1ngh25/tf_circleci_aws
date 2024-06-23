terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#! Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "CircleCIIsntance" {
  ami = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
tags = {
    Name = "CircleCIIsntance"
  }  
}