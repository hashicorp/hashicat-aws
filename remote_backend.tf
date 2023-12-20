terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "CHIP-Labs-23"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
