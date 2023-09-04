terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "leeml-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
