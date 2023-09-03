terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "angela-terraform"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
