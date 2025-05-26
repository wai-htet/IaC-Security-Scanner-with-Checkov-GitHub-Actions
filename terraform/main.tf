provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "my-insecure-bucket"
  acl    = "public-read"
}

resource "aws_security_group" "insecure_sg" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

