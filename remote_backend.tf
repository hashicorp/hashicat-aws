terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Organization-101"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
