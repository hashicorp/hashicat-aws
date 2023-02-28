terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "test12342"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
