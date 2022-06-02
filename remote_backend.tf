terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "billabongrob"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
