terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "byoh"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
