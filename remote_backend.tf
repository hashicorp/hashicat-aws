terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "theoneandonly"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
