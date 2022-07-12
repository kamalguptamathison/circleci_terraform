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
  ami           = "ami-08e93a9522bbe6df6"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
}