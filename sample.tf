terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.3.0"
    }
  }
}

provider "aws" {}


resource "aws_s3_bucket" "demo-bucket-01" {
  bucket = "demo-bucket-01"

  tags = {
    Name        = "Demo bucket"
    Environment = "Dev"
    Source      = "TF"
  }
}