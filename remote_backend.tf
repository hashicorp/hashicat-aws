terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "robertsonnest2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
