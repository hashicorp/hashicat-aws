terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "knanao"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
