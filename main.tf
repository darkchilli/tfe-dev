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
