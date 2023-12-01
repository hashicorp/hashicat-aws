terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "belson-lab"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
