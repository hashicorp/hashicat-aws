terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "interrupt-software"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
