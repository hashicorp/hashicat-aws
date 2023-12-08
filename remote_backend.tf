terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hyunsik-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
