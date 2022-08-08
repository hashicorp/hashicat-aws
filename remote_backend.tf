terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "phnorwood-hc-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
