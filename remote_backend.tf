terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "walter-terraform"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
