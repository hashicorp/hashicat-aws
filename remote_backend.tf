terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "heb-sa"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
