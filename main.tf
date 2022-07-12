provider "aws" {
    region = "us-west-2"
}

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

resource "aws_instance" "test" {
  ami           = ami-0bb199dd39edd7d71
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
}