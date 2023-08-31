terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jakesky"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
