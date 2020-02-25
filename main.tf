terraform {
  backend "remote" {
    organization = "hotchilli"

    workspaces {
      name = "tfe-dev"
    }
  }
}
