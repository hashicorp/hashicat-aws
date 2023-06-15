terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dlee-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
