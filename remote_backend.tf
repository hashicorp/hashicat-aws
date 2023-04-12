terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "maxxterra"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
