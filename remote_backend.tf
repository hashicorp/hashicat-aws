terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tdmarco"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
