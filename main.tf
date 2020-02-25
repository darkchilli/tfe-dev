terraform {
  backend "remote" {
    organization = "hotchilli"

    workspaces {
      name = "tfe-dev"
    }
  }
}

provider "aws" {
	region = "ap-southeast-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
