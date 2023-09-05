terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "having"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
