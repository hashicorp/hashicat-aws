terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hpn-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
