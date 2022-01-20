terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rndmdgtl"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
