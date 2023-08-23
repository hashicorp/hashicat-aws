terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yilmarh"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
