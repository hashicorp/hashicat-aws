terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "7-july"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
