terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "example-org-543ef1"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
