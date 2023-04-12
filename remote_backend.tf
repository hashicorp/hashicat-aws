terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cunningham-testing"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
