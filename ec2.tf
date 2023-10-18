terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.21.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIASJVF6R4MABJDVIEV"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           ="ami-09100e341bda441c0"
  instance_type = "t2.micro"
 
 tags = {
    Name = "terraform _ec2"
  }
}