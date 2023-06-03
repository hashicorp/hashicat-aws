terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "captaincy_io"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
