terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashi-vmans"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
