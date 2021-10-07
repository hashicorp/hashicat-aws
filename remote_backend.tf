terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "keith-acme"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
