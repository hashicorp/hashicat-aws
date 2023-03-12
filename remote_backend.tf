terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tfe-lklv"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
