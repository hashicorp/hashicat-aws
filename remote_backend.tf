terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tfchip-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
