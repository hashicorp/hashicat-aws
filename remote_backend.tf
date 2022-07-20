terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "customer-acme"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
