terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "niemannorg"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
