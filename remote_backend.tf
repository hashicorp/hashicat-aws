terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bgk-trial-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}