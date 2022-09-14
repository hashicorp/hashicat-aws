terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cba-hashicat-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
