terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.3.0"
    }
  }
}

provider "aws" {}


resource "aws_s3_bucket" "ccm-demo-bucket-01-20231606" {
  bucket = "ccm-demo-bucket-01-20231606"

  tags = {
    Name        = "Demo bucket"
    Environment = "Dev"
    Source      = "TF"
  }
}