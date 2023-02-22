terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nimble-kai"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
