terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Blackmosesco"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
