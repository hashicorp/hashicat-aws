terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "instruqt-testing"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
