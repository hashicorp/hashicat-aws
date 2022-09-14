terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nzcloud"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
