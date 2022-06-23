terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ChelleCorp"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
