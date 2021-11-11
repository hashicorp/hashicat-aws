terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TFC-CHIP"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
